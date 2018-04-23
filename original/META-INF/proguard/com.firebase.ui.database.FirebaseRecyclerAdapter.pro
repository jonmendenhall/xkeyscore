# Generated keep rule for Lifecycle observer adapter.
-keep class com.firebase.ui.database.FirebaseRecyclerAdapter_LifecycleAdapter {
   ifused class com.firebase.ui.database.FirebaseRecyclerAdapter {
       <init>(...);
   };
}
