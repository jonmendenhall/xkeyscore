.class public abstract Lcom/firebase/ui/database/FirebaseListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FirebaseListAdapter.java"

# interfaces
.implements Lcom/firebase/ui/database/FirebaseAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Lcom/firebase/ui/database/FirebaseAdapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FirebaseListAdapter"


# instance fields
.field protected final mLayout:I

.field private final mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/ui/database/ObservableSnapshotArray<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/firebase/ui/database/FirebaseListOptions;)V
    .locals 1
    .param p1    # Lcom/firebase/ui/database/FirebaseListOptions;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/ui/database/FirebaseListOptions<",
            "TT;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/firebase/ui/database/FirebaseListOptions;->getSnapshots()Lcom/firebase/ui/database/ObservableSnapshotArray;

    move-result-object v0

    iput-object v0, p0, Lcom/firebase/ui/database/FirebaseListAdapter;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    .line 37
    invoke-virtual {p1}, Lcom/firebase/ui/database/FirebaseListOptions;->getLayout()I

    move-result v0

    iput v0, p0, Lcom/firebase/ui/database/FirebaseListAdapter;->mLayout:I

    .line 39
    invoke-virtual {p1}, Lcom/firebase/ui/database/FirebaseListOptions;->getOwner()Landroid/arch/lifecycle/LifecycleOwner;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/firebase/ui/database/FirebaseListOptions;->getOwner()Landroid/arch/lifecycle/LifecycleOwner;

    move-result-object p1

    invoke-interface {p1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method cleanup(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 0
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 61
    invoke-interface {p1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/Lifecycle;->removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseListAdapter;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    invoke-virtual {v0}, Lcom/firebase/ui/database/ObservableSnapshotArray;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseListAdapter;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    invoke-virtual {v0, p1}, Lcom/firebase/ui/database/ObservableSnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseListAdapter;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    invoke-virtual {v0, p1}, Lcom/firebase/ui/database/ObservableSnapshotArray;->getSnapshot(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getRef(I)Lcom/google/firebase/database/DatabaseReference;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseListAdapter;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    invoke-virtual {v0, p1}, Lcom/firebase/ui/database/ObservableSnapshotArray;->getSnapshot(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getRef()Lcom/google/firebase/database/DatabaseReference;

    move-result-object p1

    return-object p1
.end method

.method public getSnapshots()Lcom/firebase/ui/database/ObservableSnapshotArray;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/firebase/ui/database/ObservableSnapshotArray<",
            "TT;>;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseListAdapter;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 113
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iget v0, p0, Lcom/firebase/ui/database/FirebaseListAdapter;->mLayout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 116
    :cond_0
    invoke-virtual {p0, p1}, Lcom/firebase/ui/database/FirebaseListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    .line 119
    invoke-virtual {p0, p2, p3, p1}, Lcom/firebase/ui/database/FirebaseListAdapter;->populateView(Landroid/view/View;Ljava/lang/Object;I)V

    return-object p2
.end method

.method public onChildChanged(Lcom/firebase/ui/common/ChangeEventType;Lcom/google/firebase/database/DataSnapshot;II)V
    .locals 0
    .param p1    # Lcom/firebase/ui/common/ChangeEventType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 69
    invoke-virtual {p0}, Lcom/firebase/ui/database/FirebaseListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onChildChanged(Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V
    .locals 0
    .param p1    # Lcom/firebase/ui/common/ChangeEventType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    check-cast p2, Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/firebase/ui/database/FirebaseListAdapter;->onChildChanged(Lcom/firebase/ui/common/ChangeEventType;Lcom/google/firebase/database/DataSnapshot;II)V

    return-void
.end method

.method public onDataChanged()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1
    .param p1    # Lcom/google/firebase/database/DatabaseError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "FirebaseListAdapter"

    .line 78
    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->toException()Lcom/google/firebase/database/DatabaseException;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    check-cast p1, Lcom/google/firebase/database/DatabaseError;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/database/FirebaseListAdapter;->onError(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method

.method protected abstract populateView(Landroid/view/View;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public startListening()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseListAdapter;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    invoke-virtual {v0, p0}, Lcom/firebase/ui/database/ObservableSnapshotArray;->isListening(Lcom/firebase/ui/common/BaseChangeEventListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseListAdapter;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    invoke-virtual {v0, p0}, Lcom/firebase/ui/database/ObservableSnapshotArray;->addChangeEventListener(Lcom/firebase/ui/common/BaseChangeEventListener;)Lcom/firebase/ui/common/BaseChangeEventListener;

    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 1
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        value = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseListAdapter;->mSnapshots:Lcom/firebase/ui/database/ObservableSnapshotArray;

    invoke-virtual {v0, p0}, Lcom/firebase/ui/database/ObservableSnapshotArray;->removeChangeEventListener(Lcom/firebase/ui/common/BaseChangeEventListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/firebase/ui/database/FirebaseListAdapter;->notifyDataSetChanged()V

    return-void
.end method
