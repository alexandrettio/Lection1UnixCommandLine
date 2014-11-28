#!/bin/bash

SETCOLOR_SUCCESS="echo -en \\033[1;32m"
SETCOLOR_FAILURE="echo -en \\033[1;31m"
SETCOLOR_NORMAL="echo -en \\033[0;39m"

function task_a() {
  $SETCOLOR_SUCCESS
  echo "Вы выбрвли задание a."
  $SETCOLOR_NORMAL
  awk -F" " '{ 
    if ($6 ~ /resume/) { 
      print 
    } 
  }' /Users/Alexandret/Yandex.Disk/Lessons/Headhunter/Lection1UnixCommandLine/log
}

function task_b() {
  $SETCOLOR_SUCCESS
  echo "Вы выбрвли задание b."
  $SETCOLOR_NORMAL
  echo "Введите дату в формате гггг-мм-дд"
}

function task_c() {
  $SETCOLOR_SUCCESS
  echo "Вы выбрвли задание c."
  $SETCOLOR_NORMAL
}

function choose_task() {
  echo "Выберите пункт задачи для проверки:"
  echo "a - Рассчитайте общее время успешных обращений к URL /resume c 12 до 13."
  echo "    Рассчитать среднее значение, 95% квантиль, 99% квантиль времени отклика (response_time) к этому URL."
  echo "b - Рассчитать среднее значение и медиану по времени отклика к резюме с id=43 в течение заданного дня."
  echo "c - Постройте график 95% квантили по времени отклика в течение дня по трем типам URL: /resume /vacancy /user."
  echo "    Каждый URL должна иметь свой цвет. (Вы можете использовать timeplot для создания диаграмм)"
  
  read doing #здесь мы читаем в переменную $doing со стандартного ввода

  case $doing in
  a)
  task_a # если $doing содержит 1, то запустить nano
  ;;
  b)
  task_b # если $doing содержит 2, то запустить vi
  ;;
  c)
  task_c # если $doing содержит 3, то запустить emacs
  ;;

  *) #если введено с клавиатуры то, что в case не описывается, выполнять следующее:
  echo "Введено неправильное действие"
esac #окончание оператора case.
}

choose_task