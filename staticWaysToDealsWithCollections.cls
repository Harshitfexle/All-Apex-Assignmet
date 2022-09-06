public class staticWaysToDealsWithCollections {
        public staticWaysToDealsWithCollections(){
        
            map<String,List<String>> mapOfList = new map<String,List<String>>();
        
            List<String> RajState = new List<String>{'Jaipur','Ajmer'};
          
            mapOflist.put('Raj',RajState); 
           
            List<String> WBState = new List<String>{'Asansole','Kolkata'};
           
            mapOflist.put('WB',WBState);
            
            map<String,List<String>> mapOfList2 = new map<String,List<String>>();
        
            List<String> TexasState = new List<String>{'Dallas','Austin'};
			 mapOfList2.put('Tex',TexasState);
            
            List<String> NCState = new List<String>{'Charlotte','Rayleigh'};
         
            mapOfList2.put('NC',NCState);
            
            //System.debug('@@@@@=>'+mapOfList);
            Map<String,map<String,List<String>>> mapOfcountry = new Map<String,map<String,List<String>>>();
            mapOfcountry.put('India',mapOflist);
            System.debug('India key value are '+mapOfcountry.get('India'));
        
            Map<String,map<String,List<String>>>mapOfcountry2=new Map<String,map<String,List<String>>>();
            mapOfcountry2.put('USA',mapOflist2);
            System.debug('USA key value are '+mapOfcountry2.get('USA'));         
    }
    }