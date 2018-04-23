.class final Lcom/intermedia/model/AutoParcel_Broadcast$Builder;
.super Lcom/intermedia/model/Broadcast$Builder;
.source "AutoParcel_Broadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/model/AutoParcel_Broadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Builder"
.end annotation


# instance fields
.field private broadcastId:Ljava/lang/Long;

.field private final set$:Ljava/util/BitSet;

.field private socketUrl:Ljava/lang/String;

.field private state:Ljava/lang/String;

.field private streamUrl:Ljava/lang/String;

.field private streams:Lcom/intermedia/model/Streams;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 152
    invoke-direct {p0}, Lcom/intermedia/model/Broadcast$Builder;-><init>()V

    .line 146
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->set$:Ljava/util/BitSet;

    return-void
.end method

.method constructor <init>(Lcom/intermedia/model/Broadcast;)V
    .locals 1

    .line 154
    invoke-direct {p0}, Lcom/intermedia/model/Broadcast$Builder;-><init>()V

    .line 146
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->set$:Ljava/util/BitSet;

    .line 155
    invoke-virtual {p1}, Lcom/intermedia/model/Broadcast;->broadcastId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->broadcastId(Ljava/lang/Long;)Lcom/intermedia/model/Broadcast$Builder;

    .line 156
    invoke-virtual {p1}, Lcom/intermedia/model/Broadcast;->streams()Lcom/intermedia/model/Streams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->streams(Lcom/intermedia/model/Streams;)Lcom/intermedia/model/Broadcast$Builder;

    .line 157
    invoke-virtual {p1}, Lcom/intermedia/model/Broadcast;->socketUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->socketUrl(Ljava/lang/String;)Lcom/intermedia/model/Broadcast$Builder;

    .line 158
    invoke-virtual {p1}, Lcom/intermedia/model/Broadcast;->state()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->state(Ljava/lang/String;)Lcom/intermedia/model/Broadcast$Builder;

    .line 159
    invoke-virtual {p1}, Lcom/intermedia/model/Broadcast;->streamUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->streamUrl(Ljava/lang/String;)Lcom/intermedia/model/Broadcast$Builder;

    return-void
.end method


# virtual methods
.method public broadcastId(Ljava/lang/Long;)Lcom/intermedia/model/Broadcast$Builder;
    .locals 1

    .line 163
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->broadcastId:Ljava/lang/Long;

    .line 164
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public build()Lcom/intermedia/model/Broadcast;
    .locals 9

    .line 191
    iget-object v0, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    const-string v0, "broadcastId"

    const-string v2, "streams"

    const-string v3, "socketUrl"

    .line 192
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 197
    iget-object v4, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->set$:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x20

    .line 198
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, v0, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing required properties:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_2
    new-instance v0, Lcom/intermedia/model/AutoParcel_Broadcast;

    iget-object v3, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->broadcastId:Ljava/lang/Long;

    iget-object v4, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->streams:Lcom/intermedia/model/Streams;

    iget-object v5, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->socketUrl:Ljava/lang/String;

    iget-object v6, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->state:Ljava/lang/String;

    iget-object v7, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->streamUrl:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/intermedia/model/AutoParcel_Broadcast;-><init>(Ljava/lang/Long;Lcom/intermedia/model/Streams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/intermedia/model/AutoParcel_Broadcast$1;)V

    return-object v0
.end method

.method public socketUrl(Ljava/lang/String;)Lcom/intermedia/model/Broadcast$Builder;
    .locals 1

    .line 175
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->socketUrl:Ljava/lang/String;

    .line 176
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method

.method public state(Ljava/lang/String;)Lcom/intermedia/model/Broadcast$Builder;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->state:Ljava/lang/String;

    return-object p0
.end method

.method public streamUrl(Ljava/lang/String;)Lcom/intermedia/model/Broadcast$Builder;
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->streamUrl:Ljava/lang/String;

    return-object p0
.end method

.method public streams(Lcom/intermedia/model/Streams;)Lcom/intermedia/model/Broadcast$Builder;
    .locals 1

    .line 169
    iput-object p1, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->streams:Lcom/intermedia/model/Streams;

    .line 170
    iget-object p1, p0, Lcom/intermedia/model/AutoParcel_Broadcast$Builder;->set$:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    return-object p0
.end method
