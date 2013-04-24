Feature: stingray
    In order to manipulate an array
    as a Developer
    I need to use dot notation

    Scenario Outline: read from array (boolean)
        Given a default array
        And a node alias "<node_alias>"
        Then it should pass constraint "<constraint>"

        Examples:
            |  node_alias                 |   constraint                                         |
            |  boolean.true               |   Symfony\Component\Validator\Constraints\True       |
            |  boolean.false              |   Symfony\Component\Validator\Constraints\False      |

    Scenario Outline: read from array (integer)
        Given a default array
        And a node alias "<node_alias>"
        Then it should pass constraint "<constraint>"

        Examples:
            |  node_alias                 |   constraint                                         |
            |  integer.one                |   Symfony\Component\Validator\Constraints\False      |
            |  integer.two                |   Symfony\Component\Validator\Constraints\False      |
            |  integer.three              |   Symfony\Component\Validator\Constraints\False      |            

    Scenario Outline: read from array (floating point)
        Given a default array
        And a node alias "<node_alias>"
        Then it should be within "<min>" and "<max>"

        Examples:
            |  node_alias                 |   min     |   max     |
            |  integer.float.decimal      |   1.2     |   1.3     |       
            |  integer.float.exponent.a   |   1.1e3   |   1.3e3   |
            |  integer.float.exponent.b   |   6E-10   |   8E-10   |

    Scenario Outline: read from array (string)
        Given a default array
        And a node alias "<node_alias>"
        Then it should pass constraint "<constraint>"

        Examples:
            |  node_alias                 |   constraint                                         |
            |  string.notblank            |   Symfony\Component\Validator\Constraints\NotBlank   |            
            |  string.blank               |   Symfony\Component\Validator\Constraints\Blank      |            
            |  string.null                |   Symfony\Component\Validator\Constraints\Null       |            
