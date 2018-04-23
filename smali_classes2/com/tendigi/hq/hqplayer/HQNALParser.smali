.class final Lcom/tendigi/hq/hqplayer/HQNALParser;
.super Ljava/lang/Object;
.source "HQNALParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendigi/hq/hqplayer/HQNALParser$NALListener;,
        Lcom/tendigi/hq/hqplayer/HQNALParser$NAL;
    }
.end annotation


# instance fields
.field private data:[B

.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tendigi/hq/hqplayer/HQNALParser$NALListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([B)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tendigi/hq/hqplayer/HQNALParser;->listeners:Ljava/util/Map;

    .line 53
    iput-object p1, p0, Lcom/tendigi/hq/hqplayer/HQNALParser;->data:[B

    return-void
.end method


# virtual methods
.method public addListener(ILcom/tendigi/hq/hqplayer/HQNALParser$NALListener;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 60
    iget-object v0, p0, Lcom/tendigi/hq/hqplayer/HQNALParser;->listeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public parse()V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v0

    .line 72
    :goto_0
    iget-object v3, p0, Lcom/tendigi/hq/hqplayer/HQNALParser;->data:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x5

    if-ge v1, v3, :cond_2

    .line 73
    iget-object v3, p0, Lcom/tendigi/hq/hqplayer/HQNALParser;->data:[B

    aget-byte v3, v3, v1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tendigi/hq/hqplayer/HQNALParser;->data:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tendigi/hq/hqplayer/HQNALParser;->data:[B

    add-int/lit8 v4, v1, 0x2

    aget-byte v3, v3, v4

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tendigi/hq/hqplayer/HQNALParser;->data:[B

    add-int/lit8 v4, v1, 0x3

    aget-byte v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 74
    iget-object v3, p0, Lcom/tendigi/hq/hqplayer/HQNALParser;->data:[B

    add-int/lit8 v4, v1, 0x4

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x1f

    if-ltz v0, :cond_0

    if-ltz v2, :cond_0

    .line 75
    iget-object v4, p0, Lcom/tendigi/hq/hqplayer/HQNALParser;->listeners:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    iget-object v4, p0, Lcom/tendigi/hq/hqplayer/HQNALParser;->listeners:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tendigi/hq/hqplayer/HQNALParser$NALListener;

    sub-int v5, v1, v2

    invoke-interface {v4, v0, v2, v5}, Lcom/tendigi/hq/hqplayer/HQNALParser$NALListener;->onNAL(III)V

    :cond_0
    move v2, v1

    move v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_3

    if-ltz v2, :cond_3

    .line 83
    iget-object v1, p0, Lcom/tendigi/hq/hqplayer/HQNALParser;->listeners:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    iget-object v1, p0, Lcom/tendigi/hq/hqplayer/HQNALParser;->listeners:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tendigi/hq/hqplayer/HQNALParser$NALListener;

    iget-object v3, p0, Lcom/tendigi/hq/hqplayer/HQNALParser;->data:[B

    array-length v3, v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v0, v2, v3}, Lcom/tendigi/hq/hqplayer/HQNALParser$NALListener;->onNAL(III)V

    :cond_3
    return-void
.end method
