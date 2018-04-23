# Generated keep rule for Lifecycle observer adapter.
-keep class com.firebase.ui.database.FirebaseListAdapter_LifecycleAdapter {
   ifused class com.firebase.ui.database.FirebaseListAdapter {
       <init>(...);
   };
}
