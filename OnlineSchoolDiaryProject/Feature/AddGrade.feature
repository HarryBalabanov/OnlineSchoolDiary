Feature: Добавяне на оценка в дневника


  
  Scenario: Добавяне на оценка в дневника с валидни данни
		Given Учителя отваря екрана за попълване в дневника
    When  Учителя въвежда оценка на ученика 5
    And   Въвежда име на предмет по която е оценката "Geografiq"
    And   Въвежда име на ученика "Ivan"
    And   Въвежда Фамилия на ученика "Ivanov"
    And   Въвежда номер на ученика 15
    And   Натисне върху бутона за добавяне на данните в дневника
    Then  Вижда съобщение "Успешно добавихте оценка в дневника!"
    
  Scenario: Добавяне на оценка в дневника без оценка на ученика
    Given Учителя отваря екрана за попълване в дневника
    When  Въвежда име на предмет по която е оценката "Biologia"
    And   Въвежда име на ученика "Bogomil"
    And   Въвежда Фамилия на ученика "Borisov"
    And   Въвежда номер на ученика 12
    And   Натисне върху бутона за добавяне на данните в дневника
    Then  Вижда съобщение "Въведете оценка на ученика!"
    
  Scenario: Добавяне на невалидна оценка в дневника
    Given Учителя отваря екрана за попълване в дневника
    When  Учителя въвежда оценка на ученика 1
    And   Въвежда име на предмет по която е оценката "Geografiq"
    And   Въвежда име на ученика "Ivan"
    And   Въвежда Фамилия на ученика "Bogomilov"
    And   Въвежда номер на ученика 12
    And   Натисне върху бутона за добавяне на данните в дневника
    Then  Вижда съобщение "Въведете валидна оценка на ученика!"
    
  Scenario: Добавяне на оценка без име на предмет
    Given Учителя отваря екрана за попълване в дневника
    When  Учителя въвежда оценка на ученика 4
    And   Въвежда име на ученика "Momchil"
    And   Въвежда Фамилия на ученика "Ivanov"
    And   Въвежда номер на ученика 11
    And   Натисне върху бутона за добавяне на данните в дневника
    Then  Вижда съобщение "Въведете име на Предмета!"
    
    Scenario: Добавяне на оценка без име в дневника
    Given Учителя отваря екрана за попълване в дневника
    When  Учителя въвежда оценка на ученика 5
    And   Въвежда име на предмет по която е оценката "Geografiq"
    And   Въвежда Фамилия на ученика "Ivanov"
    And   Въвежда номер на ученика 15
    And   Натисне върху бутона за добавяне на данните в дневника
    Then  Вижда съобщение "Въведете име на ученика!"
    
    Scenario: Добавяне на оценка без фамилия в дневника
    Given Учителя отваря екрана за попълване в дневника
    When  Учителя въвежда оценка на ученика 3
    And   Въвежда име на предмет по която е оценката "Geografiq"
    And   Въвежда име на ученика "Ivan"
    And   Въвежда номер на ученика 15
    And   Натисне върху бутона за добавяне на данните в дневника
    Then  Вижда съобщение "Въведете фамилия на ученика!"
    
    Scenario: Добавяне на оценка без номер на ученика в дневника
    Given  Учителя отваря екрана за попълване в дневника
    When   Учителя въвежда оценка на ученика 4
    And  	 Въвежда име на предмет по която е оценката "Geografiq"
    And    Въвежда име на ученика "Georgi"
    And  	 Въвежда Фамилия на ученика "Ivanov"
    And    Натисне върху бутона за добавяне на данните в дневника
    Then   Вижда съобщение "Въведете номер в клас на ученика!"
