.class public abstract Lcom/firebase/ui/common/BaseObservableSnapshotArray;
.super Ljava/util/AbstractList;
.source "BaseObservableSnapshotArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "L::Lcom/firebase/ui/common/BaseChangeEventListener<",
        "TS;TE;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mCachingParser:Lcom/firebase/ui/common/BaseCachingSnapshotParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/ui/common/BaseCachingSnapshotParser<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field private mHasDataChanged:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/firebase/ui/common/BaseCachingSnapshotParser;)V
    .locals 1
    .param p1    # Lcom/firebase/ui/common/BaseCachingSnapshotParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/ui/common/BaseCachingSnapshotParser<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mHasDataChanged:Z

    .line 37
    invoke-static {p1}, Lcom/firebase/ui/common/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/firebase/ui/common/BaseCachingSnapshotParser;

    iput-object p1, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mCachingParser:Lcom/firebase/ui/common/BaseCachingSnapshotParser;

    return-void
.end method


# virtual methods
.method public addChangeEventListener(Lcom/firebase/ui/common/BaseChangeEventListener;)Lcom/firebase/ui/common/BaseChangeEventListener;
    .locals 5
    .param p1    # Lcom/firebase/ui/common/BaseChangeEventListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .line 84
    invoke-static {p1}, Lcom/firebase/ui/common/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-virtual {p0}, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->isListening()Z

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 90
    :goto_0
    invoke-virtual {p0}, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 91
    sget-object v2, Lcom/firebase/ui/common/ChangeEventType;->ADDED:Lcom/firebase/ui/common/ChangeEventType;

    invoke-virtual {p0, v1}, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->getSnapshot(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {p1, v2, v3, v1, v4}, Lcom/firebase/ui/common/BaseChangeEventListener;->onChildChanged(Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-boolean v1, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mHasDataChanged:Z

    if-eqz v1, :cond_1

    .line 94
    invoke-interface {p1}, Lcom/firebase/ui/common/BaseChangeEventListener;->onDataChanged()V

    :cond_1
    if-nez v0, :cond_2

    .line 97
    invoke-virtual {p0}, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->onCreate()V

    :cond_2
    return-object p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mCachingParser:Lcom/firebase/ui/common/BaseCachingSnapshotParser;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->getSnapshot(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/firebase/ui/common/BaseCachingSnapshotParser;->parseSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSnapshot(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TS;"
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->getSnapshots()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getSnapshots()Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation
.end method

.method public isListening()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isListening(Lcom/firebase/ui/common/BaseChangeEventListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")Z"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final notifyOnChildChanged(Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/ui/common/ChangeEventType;",
            "TS;II)V"
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/firebase/ui/common/ChangeEventType;->CHANGED:Lcom/firebase/ui/common/ChangeEventType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/firebase/ui/common/ChangeEventType;->REMOVED:Lcom/firebase/ui/common/ChangeEventType;

    if-ne p1, v0, :cond_1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mCachingParser:Lcom/firebase/ui/common/BaseCachingSnapshotParser;

    invoke-virtual {v0, p2}, Lcom/firebase/ui/common/BaseCachingSnapshotParser;->invalidate(Ljava/lang/Object;)V

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/ui/common/BaseChangeEventListener;

    .line 172
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/firebase/ui/common/BaseChangeEventListener;->onChildChanged(Lcom/firebase/ui/common/ChangeEventType;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected final notifyOnDataChanged()V
    .locals 2

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mHasDataChanged:Z

    .line 179
    iget-object v0, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/ui/common/BaseChangeEventListener;

    .line 180
    invoke-interface {v1}, Lcom/firebase/ui/common/BaseChangeEventListener;->onDataChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final notifyOnError(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/ui/common/BaseChangeEventListener;

    .line 186
    invoke-interface {v1, p1}, Lcom/firebase/ui/common/BaseChangeEventListener;->onError(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCreate()V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method protected onDestroy()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mHasDataChanged:Z

    .line 144
    invoke-virtual {p0}, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->getSnapshots()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    iget-object v0, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mCachingParser:Lcom/firebase/ui/common/BaseCachingSnapshotParser;

    invoke-virtual {v0}, Lcom/firebase/ui/common/BaseCachingSnapshotParser;->clear()V

    return-void
.end method

.method public removeAllListeners()V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/firebase/ui/common/BaseChangeEventListener;

    .line 124
    invoke-virtual {p0, v1}, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->removeChangeEventListener(Lcom/firebase/ui/common/BaseChangeEventListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeChangeEventListener(Lcom/firebase/ui/common/BaseChangeEventListener;)V
    .locals 2
    .param p1    # Lcom/firebase/ui/common/BaseChangeEventListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-static {p1}, Lcom/firebase/ui/common/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {p0}, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->isListening()Z

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p0}, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->isListening()Z

    move-result p1

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->onDestroy()V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/firebase/ui/common/BaseObservableSnapshotArray;->getSnapshots()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
