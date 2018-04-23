.class public Lcom/firebase/ui/database/FirebaseIndexArray;
.super Lcom/firebase/ui/database/ObservableSnapshotArray;
.source "FirebaseIndexArray.java"

# interfaces
.implements Lcom/firebase/ui/database/ChangeEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/firebase/ui/database/ObservableSnapshotArray<",
        "TT;>;",
        "Lcom/firebase/ui/database/ChangeEventListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FirebaseIndexArray"


# instance fields
.field private final mDataRef:Lcom/google/firebase/database/DatabaseReference;

.field private final mDataSnapshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/database/DataSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPendingMoveOrDelete:Z

.field private final mKeySnapshots:Lcom/firebase/ui/database/FirebaseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/ui/database/FirebaseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mKeysWithPendingUpdate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/database/DatabaseReference;",
            "Lcom/google/firebase/database/ValueEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/Query;Lcom/google/firebase/database/DatabaseReference;Lcom/firebase/ui/database/SnapshotParser;)V
    .locals 0
    .param p1    # Lcom/google/firebase/database/Query;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/database/DatabaseReference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/firebase/ui/database/SnapshotParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/Query;",
            "Lcom/google/firebase/database/DatabaseReference;",
            "Lcom/firebase/ui/database/SnapshotParser<",
            "TT;>;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p3}, Lcom/firebase/ui/database/ObservableSnapshotArray;-><init>(Lcom/firebase/ui/database/SnapshotParser;)V

    .line 38
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mRefs:Ljava/util/Map;

    .line 41
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mDataSnapshots:Ljava/util/List;

    .line 48
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mKeysWithPendingUpdate:Ljava/util/List;

    .line 70
    iput-object p2, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mDataRef:Lcom/google/firebase/database/DatabaseReference;

    .line 71
    new-instance p2, Lcom/firebase/ui/database/FirebaseArray;

    new-instance p3, Lcom/firebase/ui/database/FirebaseIndexArray$1;

    invoke-direct {p3, p0}, Lcom/firebase/ui/database/FirebaseIndexArray$1;-><init>(Lcom/firebase/ui/database/FirebaseIndexArray;)V

    invoke-direct {p2, p1, p3}, Lcom/firebase/ui/database/FirebaseArray;-><init>(Lcom/google/firebase/database/Query;Lcom/firebase/ui/database/SnapshotParser;)V

    iput-object p2, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mKeySnapshots:Lcom/firebase/ui/database/FirebaseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/firebase/ui/database/FirebaseIndexArray;ILjava/lang/String;)I
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/firebase/ui/database/FirebaseIndexArray;->returnOrFindIndexForKey(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/firebase/ui/database/FirebaseIndexArray;Ljava/lang/String;I)Z
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/firebase/ui/database/FirebaseIndexArray;->isKeyAtIndex(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/firebase/ui/database/FirebaseIndexArray;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mDataSnapshots:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/firebase/ui/database/FirebaseIndexArray;Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/firebase/ui/database/FirebaseIndexArray;->notifyOnChildChanged(Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/firebase/ui/database/FirebaseIndexArray;Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/firebase/ui/database/FirebaseIndexArray;->notifyOnChildChanged(Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/firebase/ui/database/FirebaseIndexArray;Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/firebase/ui/database/FirebaseIndexArray;->notifyOnChildChanged(Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/firebase/ui/database/FirebaseIndexArray;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mKeysWithPendingUpdate:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/firebase/ui/database/FirebaseIndexArray;)V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/firebase/ui/database/FirebaseIndexArray;->notifyOnDataChanged()V

    return-void
.end method

.method static synthetic access$800(Lcom/firebase/ui/database/FirebaseIndexArray;Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lcom/firebase/ui/database/FirebaseIndexArray;->notifyOnError(Ljava/lang/Object;)V

    return-void
.end method

.method private isKeyAtIndex(Ljava/lang/String;I)Z
    .locals 1

    if-ltz p2, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/firebase/ui/database/FirebaseIndexArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mDataSnapshots:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {p2}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private onKeyAdded(Lcom/google/firebase/database/DataSnapshot;I)V
    .locals 2

    .line 174
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mDataRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mKeysWithPendingUpdate:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object p1, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mRefs:Ljava/util/Map;

    new-instance v1, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;

    invoke-direct {v1, p0, p2}, Lcom/firebase/ui/database/FirebaseIndexArray$DataRefListener;-><init>(Lcom/firebase/ui/database/FirebaseIndexArray;I)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/database/DatabaseReference;->addValueEventListener(Lcom/google/firebase/database/ValueEventListener;)Lcom/google/firebase/database/ValueEventListener;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private onKeyMoved(Lcom/google/firebase/database/DataSnapshot;II)V
    .locals 1

    .line 183
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-direct {p0, p1, p3}, Lcom/firebase/ui/database/FirebaseIndexArray;->isKeyAtIndex(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mDataSnapshots:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/DataSnapshot;

    .line 190
    invoke-direct {p0, p2, p1}, Lcom/firebase/ui/database/FirebaseIndexArray;->returnOrFindIndexForKey(ILjava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    .line 191
    iput-boolean p2, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mHasPendingMoveOrDelete:Z

    .line 193
    iget-object p2, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mDataSnapshots:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 194
    sget-object p2, Lcom/firebase/ui/common/ChangeEventType;->MOVED:Lcom/firebase/ui/common/ChangeEventType;

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/firebase/ui/database/FirebaseIndexArray;->notifyOnChildChanged(Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method private onKeyRemoved(Lcom/google/firebase/database/DataSnapshot;I)V
    .locals 2

    .line 199
    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 200
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mRefs:Ljava/util/Map;

    iget-object v1, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mDataRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v1}, Lcom/google/firebase/database/DatabaseReference;->getRef()Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/ValueEventListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v1, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mDataRef:Lcom/google/firebase/database/DatabaseReference;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/DatabaseReference;->child(Ljava/lang/String;)Lcom/google/firebase/database/DatabaseReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/DatabaseReference;->removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V

    .line 203
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/firebase/ui/database/FirebaseIndexArray;->returnOrFindIndexForKey(ILjava/lang/String;)I

    move-result p2

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/firebase/ui/database/FirebaseIndexArray;->isKeyAtIndex(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 205
    iget-object p1, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mDataSnapshots:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/database/DataSnapshot;

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mHasPendingMoveOrDelete:Z

    .line 207
    sget-object v0, Lcom/firebase/ui/common/ChangeEventType;->REMOVED:Lcom/firebase/ui/common/ChangeEventType;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/firebase/ui/database/FirebaseIndexArray;->notifyOnChildChanged(Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method private returnOrFindIndexForKey(ILjava/lang/String;)I
    .locals 4

    .line 140
    invoke-direct {p0, p2, p1}, Lcom/firebase/ui/database/FirebaseIndexArray;->isKeyAtIndex(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/ui/database/FirebaseIndexArray;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 150
    iget-object v2, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mKeySnapshots:Lcom/firebase/ui/database/FirebaseArray;

    invoke-virtual {v2}, Lcom/firebase/ui/database/FirebaseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 151
    iget-object v2, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mKeySnapshots:Lcom/firebase/ui/database/FirebaseArray;

    invoke-virtual {v2, v1}, Lcom/firebase/ui/database/FirebaseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mDataSnapshots:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {v3}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    move p1, v0

    :goto_2
    return p1
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

    .line 135
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mDataSnapshots:Ljava/util/List;

    return-object v0
.end method

.method public onChildChanged(Lcom/firebase/ui/common/ChangeEventType;Lcom/google/firebase/database/DataSnapshot;II)V
    .locals 1
    .param p1    # Lcom/firebase/ui/common/ChangeEventType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/database/DataSnapshot;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 102
    sget-object v0, Lcom/firebase/ui/database/FirebaseIndexArray$2;->$SwitchMap$com$firebase$ui$common$ChangeEventType:[I

    invoke-virtual {p1}, Lcom/firebase/ui/common/ChangeEventType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/firebase/ui/database/FirebaseIndexArray;->onKeyRemoved(Lcom/google/firebase/database/DataSnapshot;I)V

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-direct {p0, p2, p3, p4}, Lcom/firebase/ui/database/FirebaseIndexArray;->onKeyMoved(Lcom/google/firebase/database/DataSnapshot;II)V

    goto :goto_0

    .line 104
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/firebase/ui/database/FirebaseIndexArray;->onKeyAdded(Lcom/google/firebase/database/DataSnapshot;I)V

    :goto_0
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
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

    .line 33
    check-cast p2, Lcom/google/firebase/database/DataSnapshot;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/firebase/ui/database/FirebaseIndexArray;->onChildChanged(Lcom/firebase/ui/common/ChangeEventType;Lcom/google/firebase/database/DataSnapshot;II)V

    return-void
.end method

.method protected onCreate()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/firebase/ui/database/ObservableSnapshotArray;->onCreate()V

    .line 83
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mKeySnapshots:Lcom/firebase/ui/database/FirebaseArray;

    invoke-virtual {v0, p0}, Lcom/firebase/ui/database/FirebaseArray;->addChangeEventListener(Lcom/firebase/ui/common/BaseChangeEventListener;)Lcom/firebase/ui/common/BaseChangeEventListener;

    return-void
.end method

.method public onDataChanged()V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mHasPendingMoveOrDelete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mKeySnapshots:Lcom/firebase/ui/database/FirebaseArray;

    invoke-virtual {v0}, Lcom/firebase/ui/database/FirebaseArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/firebase/ui/database/FirebaseIndexArray;->notifyOnDataChanged()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mHasPendingMoveOrDelete:Z

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 88
    invoke-super {p0}, Lcom/firebase/ui/database/ObservableSnapshotArray;->onDestroy()V

    .line 89
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mKeySnapshots:Lcom/firebase/ui/database/FirebaseArray;

    invoke-virtual {v0, p0}, Lcom/firebase/ui/database/FirebaseArray;->removeChangeEventListener(Lcom/firebase/ui/common/BaseChangeEventListener;)V

    .line 91
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mRefs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/DatabaseReference;

    .line 92
    iget-object v2, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mRefs:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/ValueEventListener;

    invoke-virtual {v1, v2}, Lcom/google/firebase/database/DatabaseReference;->removeEventListener(Lcom/google/firebase/database/ValueEventListener;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/database/FirebaseIndexArray;->mRefs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onError(Lcom/google/firebase/database/DatabaseError;)V
    .locals 1
    .param p1    # Lcom/google/firebase/database/DatabaseError;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "FirebaseIndexArray"

    const-string v0, "A fatal error occurred retrieving the necessary keys to populate your adapter."

    .line 129
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    check-cast p1, Lcom/google/firebase/database/DatabaseError;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/database/FirebaseIndexArray;->onError(Lcom/google/firebase/database/DatabaseError;)V

    return-void
.end method
