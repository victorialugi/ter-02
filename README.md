# Домашнее задание к занятию "`Название занятия`" - `Фамилия и имя студента`
   
### Задание 1

`1. platform_id = "standart-v4" → опечатка: "standart" вместо "standard" (t → d).
Суть: неправильное название платформы → Yandex Cloud не находит платформу → ошибка "Platform not found".

core_fraction = 5 на платформе standard-v3 → запрещено.
Суть: на этой платформе разрешены только 20, 50, 100%. Значение 5% вызывает ошибку "the specified core fraction is not available".

cores = ... — в некоторых комбинациях с core_fraction и платформой количество ядер тоже ограничено (например, только 2 или 4 на 20%).
Суть: несоответствие спецификациям платформы → ошибка "the specified number of cores is not available".

В providers.tf: service_account_key_file = file("~/.authorized_key.json") → функция file() не работает с путями вне проекта.
Суть: Terraform не может читать произвольные файлы с диска → нужно использовать переменную var.service_account_key_file и задавать путь в tfvars.

required_version = "~>1.12.0" — не поддерживала твою версию Terraform 1.14.6.
Суть: слишком строгое ограничение версии → конфликт с установленным Terraform.


2. preemptible = true и core_fraction = 5 
Вместе эти параметры позволяют создавать максимально дешёвые тестовые ВМ для практики, не тратя много денег в облаке.`

![task_1.png](https://github.com/victorialugi/ter-02/blob/main/task_1.png)
![task_1.1.png](https://github.com/victorialugi/ter-02/blob/main/task_1.1.png)

---

### Задание 4

![task_4.png](https://github.com/victorialugi/ter-02/blob/main/task_4.png)
