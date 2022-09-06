public class dynamicWaysToDealsWithCollections {
    public dynamicWaysToDealsWithCollections()
    {
        Map<String,Map<String,List<Student__c >>>mapofSchoolNamewithClassNameAndRelatedStudnetDetails=new Map<String,Map<String,List<Student__c >>>();
        List<School__c>SchoolName=[SELECT ID,Name FROM School__c];
        for(School__c S:SchoolName)
        {
        Map<String,List<Student__c >>mapofSchoolNameAndRelatedStudntDetails=new  Map<String,List<Student__c >>();
            List<classe__c > ClassName = [SELECT ID,Name FROM classe__c  WHERE School__r.ID=:S.ID];
            for(classe__c  C:ClassName)
            {
                 List<Student__c >StudentName=[SELECT ID,Name FROM Student__c  WHERE class__r.ID = :C.ID];
		                mapofSchoolNameAndRelatedStudntDetails.put(C.Name, StudentName);
                mapofSchoolNamewithClassNameAndRelatedStudnetDetails.put(S.Name,mapofSchoolNameAndRelatedStudntDetails);
            }
        }
        system.debug(mapofSchoolNamewithClassNameAndRelatedStudnetDetails);
    }
}