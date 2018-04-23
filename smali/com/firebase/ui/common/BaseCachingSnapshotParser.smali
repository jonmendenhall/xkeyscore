.class public abstract Lcom/firebase/ui/common/BaseCachingSnapshotParser;
.super Ljava/lang/Object;
.source "BaseCachingSnapshotParser.java"

# interfaces
.implements Lcom/firebase/ui/common/BaseSnapshotParser;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/firebase/ui/common/BaseSnapshotParser<",
        "TS;TT;>;"
    }
.end annotation


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x64


# instance fields
.field private final mObjectCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mParser:Lcom/firebase/ui/common/BaseSnapshotParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/firebase/ui/common/BaseSnapshotParser<",
            "TS;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/firebase/ui/common/BaseSnapshotParser;)V
    .locals 2
    .param p1    # Lcom/firebase/ui/common/BaseSnapshotParser;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/firebase/ui/common/BaseSnapshotParser<",
            "TS;TT;>;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/firebase/ui/common/BaseCachingSnapshotParser;->mObjectCache:Landroid/util/LruCache;

    .line 20
    iput-object p1, p0, Lcom/firebase/ui/common/BaseCachingSnapshotParser;->mParser:Lcom/firebase/ui/common/BaseSnapshotParser;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/firebase/ui/common/BaseCachingSnapshotParser;->mObjectCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public abstract getId(Ljava/lang/Object;)Ljava/lang/String;
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public invalidate(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/firebase/ui/common/BaseCachingSnapshotParser;->mObjectCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Lcom/firebase/ui/common/BaseCachingSnapshotParser;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public parseSnapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TT;"
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lcom/firebase/ui/common/BaseCachingSnapshotParser;->getId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/firebase/ui/common/BaseCachingSnapshotParser;->mObjectCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/firebase/ui/common/BaseCachingSnapshotParser;->mParser:Lcom/firebase/ui/common/BaseSnapshotParser;

    invoke-interface {v1, p1}, Lcom/firebase/ui/common/BaseSnapshotParser;->parseSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 36
    iget-object p1, p0, Lcom/firebase/ui/common/BaseCachingSnapshotParser;->mObjectCache:Landroid/util/LruCache;

    invoke-virtual {p1, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method
