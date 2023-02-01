public with sharing class ValidateAddress {

public void validateHomeAddress() {
   
    String houseName = 'Ayd Apt';
    String streetName = 'al.Szpitalna';
    String cityName = 'Warsaw';
    String stateName = 'Mazowieckie województwo';
    String stateIso = 'ISO 3166-2:PL';
    String countryName = 'Poland';
    String countryIso = 'ISO 3166:PL';
    
    Integer numOfChar = houseName.length(); //String class's lenght method returns Integer
    system.debug('$$$$::::Number Of Characters:::::'+ numOfChar);

    Boolean isStreetContainsHouseName = streetName.contains('Apt');
    system.debug('$$$$::::Is street name contains house name in it :::::'+ isStreetContainsHouseName);
    
    Boolean isStreetContainsStateIso = streetName.contains(stateIso);
    system.debug('$$$$::::Is street name contains state iso in it:::::'+ isStreetContainsStateIso);

    String stateIsoToUpperCase = stateIso.toUppercase();
    system.debug('$$$$::::Converting State Iso To Upper Case:::::' + stateIsoToUpperCase);

    String countryIsoToUpperCase = countryIso.toUppercase();
    system.debug('$$$$::::Converting Country Iso To Upper Case:::::' + countryIsoToUpperCase);

    String countryNameToUpperCase = countryName.toUppercase();
    system.debug('$$$$::::Converting Country Name To Upper Case:::::' + countryNameToUpperCase);

    String cityNameToLowerCase = cityName.toLowercase();
    system.debug('$$$$::::Converting City Name To Lower Case:::::' + cityNameToLowerCase);

    String stateNameToLowerCase = stateName.toLowercase();
    system.debug('$$$$::::Converting State Name To Lower Case:::::' + stateNameToLowerCase);
    
    

    String houseAndStreetNames = houseName + ' ' + streetName;
    system.debug('$$$$::::House and Street Names are::::' + houseAndStreetNames);
                            
}
}