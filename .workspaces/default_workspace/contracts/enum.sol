//SPDX-License-Identifier: MIT
pragma solidity^0.8.7;
contract enum_tutorial
{
    enum PersonType {outsider, TeachingAssisstant, AssistantProfessor}
    PersonType person;

    constructor()
    {
        // set default value
        person = PersonType.outsider;
    }

    function promote_person() public returns(PersonType)
    {
        if(person == PersonType.outsider)
        {
             person = PersonType.TeachingAssisstant;
        }
        else if(person == PersonType.TeachingAssisstant)
        {
            person = PersonType.AssistantProfessor;
        }
        
       return person;
    }

// view function because it does not modify the state
    function get_person() public view returns (PersonType)
    {
        return person;
    }

}
