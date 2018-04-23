.class public abstract Lcom/firebase/ui/database/ObservableSnapshotArray;
.super Lcom/firebase/ui/common/BaseObservableSnapshotArray;
.source "ObservableSnapshotArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/firebase/ui/common/BaseObservableSnapshotArray<",
        "Lcom/google/firebase/database/DataSnapshot;",
        "Lcom/google/firebase/database/DatabaseError;",
        "Lcom/firebase/ui/database/ChangeEventListener;",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/firebase/ui/database/SnapshotParser;)V
    .locals 1
    .param p1    # Lcom/firebase/ui/database/SnapshotParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/ui/database/SnapshotParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/firebase/ui/database/CachingSnapshotParser;

    invoke-direct {v0, p1}, Lcom/firebase/ui/database/CachingSnapshotParser;-><init>(Lcom/firebase/ui/common/BaseSnapshotParser;)V

    invoke-direct {p0, v0}, Lcom/firebase/ui/common/BaseObservableSnapshotArray;-><init>(Lcom/firebase/ui/common/BaseCachingSnapshotParser;)V

    return-void
.end method


# virtual methods
.method protected notifyListenersOnCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-virtual {p0, p1}, Lcom/firebase/ui/database/ObservableSnapshotArray;->notifyOnError(Ljava/lang/Object;)V

    return-void
.end method
