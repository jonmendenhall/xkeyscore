.class Lcom/neovisionaries/ws/client/CounterPayloadGenerator;
.super Ljava/lang/Object;
.source "CounterPayloadGenerator.java"

# interfaces
.implements Lcom/neovisionaries/ws/client/PayloadGenerator;


# instance fields
.field private mCount:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private increment()J
    .locals 4

    .line 34
    iget-wide v0, p0, Lcom/neovisionaries/ws/client/CounterPayloadGenerator;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/neovisionaries/ws/client/CounterPayloadGenerator;->mCount:J

    .line 36
    iget-wide v0, p0, Lcom/neovisionaries/ws/client/CounterPayloadGenerator;->mCount:J

    return-wide v0
.end method


# virtual methods
.method public generate()[B
    .locals 2

    .line 27
    invoke-direct {p0}, Lcom/neovisionaries/ws/client/CounterPayloadGenerator;->increment()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neovisionaries/ws/client/Misc;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
