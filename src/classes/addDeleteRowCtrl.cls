public with sharing class addDeleteRowCtrl {
    public list<myWrapper> wlist{get;set;}
    public addDeleteRowCtrl(){
        wlist=new list<myWrapper>();
        wlist.add(new myWrapper(this));
    }
    public class myWrapper{
        public String myInput{get;set;}
        myWrapper(addDeleteRowCtrl pcls){
            myInput = 'Sample Message - '+pcls.wList.size();
        }
    }
    public pageReference addRow(){
        system.debug('----wlist------'+wlist.get(0).myInput);
        wlist.add(new myWrapper(this));
        return null;
    }
}