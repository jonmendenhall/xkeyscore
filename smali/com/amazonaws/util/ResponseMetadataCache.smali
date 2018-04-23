.class public Lcom/amazonaws/util/ResponseMetadataCache;
.super Ljava/lang/Object;
.source "ResponseMetadataCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;
    }
.end annotation


# instance fields
.field private final internalCache:Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;

    invoke-direct {v0, p1}, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;-><init>(I)V

    iput-object v0, p0, Lcom/amazonaws/util/ResponseMetadataCache;->internalCache:Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;Lcom/amazonaws/ResponseMetadata;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 50
    monitor-exit p0

    return-void

    .line 51
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/util/ResponseMetadataCache;->internalCache:Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 48
    monitor-exit p0

    throw p1
.end method

.method public get(Ljava/lang/Object;)Lcom/amazonaws/ResponseMetadata;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazonaws/util/ResponseMetadataCache;->internalCache:Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazonaws/ResponseMetadata;

    return-object p1
.end method
