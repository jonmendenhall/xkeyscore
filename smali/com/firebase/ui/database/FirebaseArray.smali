.class public Lcom/firebase/ui/database/FirebaseArray;
.super Lcom/firebase/ui/database/ObservableSnapshotArray;
.source "FirebaseArray.java"

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;
.implements Lcom/google/firebase/database/ValueEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/firebase/ui/database/ObservableSnapshotArray<",
        "TT;>;",
        "Lcom/google/firebase/database/ChildEventListener;",
        "Lcom/google/firebase/database/ValueEventListener;"
    }
.end annotation


# instance fields
.field private final mQuery:Lcom/google/firebase/database/Query;

.field private final mSnapshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/database/DataSnapshot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/Query;Lcom/firebase/ui/database/SnapshotParser;)V
    .locals 0
    .param p1    # Lcom/google/firebase/database/Query;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/firebase/ui/database/SnapshotParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/Query;",
            "Lcom/firebase/ui/database/SnapshotParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p2}, Lcom/firebase/ui/database/ObservableSnapshotArray;-><init>(Lcom/firebase/ui/database/SnapshotParser;)V

    .line 35
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/firebase/ui/database/FirebaseArray;->mSnapshots:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/firebase/ui/database/FirebaseArray;->mQuery:Lcom/google/firebase/database/Query;

    return-void
.end method

.method private getIndexForKey(Ljava/lang/String;)I
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseArray;->mSnapshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/DataSnapshot;

    .line 115
    invoke-virtual {v2}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key not found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected getSnapshots()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/database/DataSnapshot;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseArray;->mSnapshots:Ljava/util/List;

    return-object v0
.end method

.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lcom/firebase/ui/database/FirebaseArray;->notifyOnError(Ljava/lang/Object;)V

    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 68
    invoke-direct {p0, p2}, Lcom/firebase/ui/database/FirebaseArray;->getIndexForKey(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseArray;->mSnapshots:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/firebase/ui/common/ChangeEventType;->ADDED:Lcom/firebase/ui/common/ChangeEventType;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/firebase/ui/database/FirebaseArray;->notifyOnChildChanged(Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V

    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 2

    .line 77
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/firebase/ui/database/FirebaseArray;->getIndexForKey(Ljava/lang/String;)I

    move-result p2

    .line 79
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseArray;->mSnapshots:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/firebase/ui/common/ChangeEventType;->CHANGED:Lcom/firebase/ui/common/ChangeEventType;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/firebase/ui/database/FirebaseArray;->notifyOnChildChanged(Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V

    return-void
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 2

    .line 93
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/ui/database/FirebaseArray;->getIndexForKey(Ljava/lang/String;)I

    move-result v0

    .line 94
    iget-object v1, p0, Lcom/firebase/ui/database/FirebaseArray;->mSnapshots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0, p2}, Lcom/firebase/ui/database/FirebaseArray;->getIndexForKey(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/firebase/ui/database/FirebaseArray;->mSnapshots:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 99
    sget-object v1, Lcom/firebase/ui/common/ChangeEventType;->MOVED:Lcom/firebase/ui/common/ChangeEventType;

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/firebase/ui/database/FirebaseArray;->notifyOnChildChanged(Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V

    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 3

    .line 85
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/firebase/ui/database/FirebaseArray;->getIndexForKey(Ljava/lang/String;)I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/firebase/ui/database/FirebaseArray;->mSnapshots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 88
    sget-object v1, Lcom/firebase/ui/common/ChangeEventType;->REMOVED:Lcom/firebase/ui/common/ChangeEventType;

    const/4 v2, -0x1

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/firebase/ui/database/FirebaseArray;->notifyOnChildChanged(Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V

    return-void
.end method

.method protected onCreate()V
    .locals 1

    .line 52
    invoke-super {p0}, Lcom/firebase/ui/database/ObservableSnapshotArray;->onCreate()V

    .line 53
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseArray;->mQuery:Lcom/google/firebase/database/Query;

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/Query;->addChildEventListener(Lcom/google/firebase/database/ChildEventListener;)Lcom/google/firebase/database/ChildEventListener;

    .line 54
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseArray;->mQuery:Lcom/google/firebase/database/Query;

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/Query;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    return-void
.end method

.method public onDataChange(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/firebase/ui/database/FirebaseArray;->notifyOnDataChanged()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 59
    invoke-super {p0}, Lcom/firebase/ui/database/ObservableSnapshotArray;->onDestroy()V

    .line 60
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseArray;->mQuery:Lcom/google/firebase/database/Query;

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/Query;->removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V

    .line 61
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseArray;->mQuery:Lcom/google/firebase/database/Query;

    invoke-virtual {v0, p0}, Lcom/google/firebase/database/Query;->removeEventListener(Lcom/google/firebase/database/ChildEventListener;)V

    return-void
.end method
