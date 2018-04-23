.class final Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;
.super Ljava/util/LinkedHashMap;
.source "ResponseMetadataCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/util/ResponseMetadataCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/amazonaws/ResponseMetadata;",
        ">;"
    }
.end annotation


# instance fields
.field private maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 80
    iput p1, p0, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;->maxSize:I

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;->size()I

    move-result p1

    iget v0, p0, Lcom/amazonaws/util/ResponseMetadataCache$InternalCache;->maxSize:I

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
