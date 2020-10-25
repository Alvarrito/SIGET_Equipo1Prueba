#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Introducir actividades no laborables

  @tag1
  Scenario: Introduccion valida de actividad no laborable
    Given "nombre periodo no laborable", "dia de la semana", "hora de inicio", "minutos de inicio", "hora de fin", "minutos de fin" y "usuario" involucrado
    When los datos son correctos
    Then se añade la actividad no laborable con "nombre periodo no laborable", "dia de la semana", "hora de inicio", "minutos de inicio", "hora de fin" y "minutos de fin" y se vincula al "usuario"

  @tag2
  Scenario: Introduccion invalida de actividad no laborable usuario no existe
    Given "nombre periodo no laborable", "dia de la semana", "hora de inicio", "minutos de inicio", "hora de fin", "minutos de fin" y "usuario" involucrado
    When usuario no esta registrado
    Then se lanza excepcion UsuarioNoExiste
    

    
