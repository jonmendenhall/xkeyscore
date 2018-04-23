.class interface abstract Lcom/firebase/ui/database/FirebaseAdapter;
.super Ljava/lang/Object;
.source "FirebaseAdapter.java"

# interfaces
.implements Lcom/firebase/ui/database/ChangeEventListener;
.implements Landroid/arch/lifecycle/LifecycleObserver;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/firebase/ui/database/ChangeEventListener;",
        "Landroid/arch/lifecycle/LifecycleObserver;"
    }
.end annotation


# virtual methods
.method public abstract getItem(I)Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public abstract getRef(I)Lcom/google/firebase/database/DatabaseReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSnapshots()Lcom/firebase/ui/database/ObservableSnapshotArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/ui/database/ObservableSnapshotArray<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract startListening()V
.end method

.method public abstract stopListening()V
.end method
