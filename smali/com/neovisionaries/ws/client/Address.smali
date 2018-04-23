.class Lcom/neovisionaries/ws/client/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field private final mHost:Ljava/lang/String;

.field private final mPort:I

.field private transient mString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/neovisionaries/ws/client/Address;->mHost:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/neovisionaries/ws/client/Address;->mPort:I

    return-void
.end method


# virtual methods
.method getHostname()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/neovisionaries/ws/client/Address;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method toInetSocketAddress()Ljava/net/InetSocketAddress;
    .locals 3

    .line 38
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/Address;->mHost:Ljava/lang/String;

    iget v2, p0, Lcom/neovisionaries/ws/client/Address;->mPort:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/neovisionaries/ws/client/Address;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "%s:%d"

    const/4 v1, 0x2

    .line 53
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/neovisionaries/ws/client/Address;->mHost:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/neovisionaries/ws/client/Address;->mPort:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neovisionaries/ws/client/Address;->mString:Ljava/lang/String;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/Address;->mString:Ljava/lang/String;

    return-object v0
.end method
