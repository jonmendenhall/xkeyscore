.class Lcom/neovisionaries/ws/client/HandshakeBuilder;
.super Ljava/lang/Object;
.source "HandshakeBuilder.java"


# static fields
.field private static final CONNECTION_HEADER:[Ljava/lang/String;

.field private static final RN:Ljava/lang/String; = "\r\n"

.field private static final UPGRADE_HEADER:[Ljava/lang/String;

.field private static final VERSION_HEADER:[Ljava/lang/String;


# instance fields
.field private mExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHost:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private mProtocols:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecure:Z

.field private final mUri:Ljava/net/URI;

.field private mUserInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Connection"

    const-string v1, "Upgrade"

    .line 28
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->CONNECTION_HEADER:[Ljava/lang/String;

    const-string v0, "Upgrade"

    const-string v1, "websocket"

    .line 29
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->UPGRADE_HEADER:[Ljava/lang/String;

    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "13"

    .line 30
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->VERSION_HEADER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/neovisionaries/ws/client/HandshakeBuilder;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iget-boolean v0, p1, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mSecure:Z

    iput-boolean v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mSecure:Z

    .line 62
    iget-object v0, p1, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mUserInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mUserInfo:Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHost:Ljava/lang/String;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHost:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mPath:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mUri:Ljava/net/URI;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mUri:Ljava/net/URI;

    .line 66
    iget-object v0, p1, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mKey:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    invoke-static {v0}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->copyProtocols(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    .line 68
    iget-object v0, p1, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-static {v0}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->copyExtensions(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    .line 69
    iget-object p1, p1, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHeaders:Ljava/util/List;

    invoke-static {p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->copyHeaders(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHeaders:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean p1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mSecure:Z

    .line 48
    iput-object p2, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mUserInfo:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHost:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mPath:Ljava/lang/String;

    const-string p2, "%s://%s%s"

    const/4 v0, 0x3

    .line 54
    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string p1, "wss"

    goto :goto_0

    :cond_0
    const-string p1, "ws"

    :goto_0
    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p1, 0x2

    aput-object p4, v0, p1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mUri:Ljava/net/URI;

    return-void
.end method

.method public static build(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 490
    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, "\r\n"

    .line 494
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static copyExtensions(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketExtension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/neovisionaries/ws/client/WebSocketExtension;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 522
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 523
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 525
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neovisionaries/ws/client/WebSocketExtension;

    .line 527
    new-instance v2, Lcom/neovisionaries/ws/client/WebSocketExtension;

    invoke-direct {v2, v1}, Lcom/neovisionaries/ws/client/WebSocketExtension;-><init>(Lcom/neovisionaries/ws/client/WebSocketExtension;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static copyHeader([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 554
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 556
    aget-object v2, p0, v1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 557
    aget-object p0, p0, v1

    aput-object p0, v0, v1

    return-object v0
.end method

.method private static copyHeaders(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 541
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 543
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 545
    invoke-static {v1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->copyHeader([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static copyProtocols(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 507
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 509
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static isValidProtocol(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 137
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 141
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-lt v3, v4, :cond_2

    const/16 v4, 0x7e

    if-lt v4, v3, :cond_2

    .line 143
    invoke-static {v3}, Lcom/neovisionaries/ws/client/Token;->isSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_2
    return v0
.end method


# virtual methods
.method public addExtension(Lcom/neovisionaries/ws/client/WebSocketExtension;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 174
    :cond_0
    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addExtension(Ljava/lang/String;)V
    .locals 0

    .line 188
    invoke-static {p1}, Lcom/neovisionaries/ws/client/WebSocketExtension;->parse(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketExtension;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->addExtension(Lcom/neovisionaries/ws/client/WebSocketExtension;)V

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 310
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 320
    :cond_1
    monitor-enter p0

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHeaders:Ljava/util/List;

    if-nez v0, :cond_2

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHeaders:Ljava/util/List;

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHeaders:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public addProtocol(Ljava/lang/String;)V
    .locals 1

    .line 75
    invoke-static {p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->isValidProtocol(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'protocol\' must be a non-empty string with characters in the range U+0021 to U+007E not including separator characters."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 82
    :cond_0
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 89
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public buildHeaders()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    .line 437
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Host"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHost:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    sget-object v2, Lcom/neovisionaries/ws/client/HandshakeBuilder;->CONNECTION_HEADER:[Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    sget-object v2, Lcom/neovisionaries/ws/client/HandshakeBuilder;->UPGRADE_HEADER:[Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    sget-object v2, Lcom/neovisionaries/ws/client/HandshakeBuilder;->VERSION_HEADER:[Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Sec-WebSocket-Key"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mKey:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v2, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Sec-WebSocket-Protocol"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    const-string v6, ", "

    invoke-static {v3, v6}, Lcom/neovisionaries/ws/client/Misc;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_0
    iget-object v2, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "Sec-WebSocket-Extensions"

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    const-string v6, ", "

    invoke-static {v3, v6}, Lcom/neovisionaries/ws/client/Misc;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_1
    iget-object v2, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mUserInfo:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mUserInfo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 466
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Authorization"

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mUserInfo:Ljava/lang/String;

    invoke-static {v3}, Lcom/neovisionaries/ws/client/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_2
    iget-object v1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHeaders:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 472
    iget-object v1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHeaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v0
.end method

.method public buildRequestLine()Ljava/lang/String;
    .locals 4

    const-string v0, "GET %s HTTP/1.1"

    const/4 v1, 0x1

    .line 428
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mPath:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clearExtensions()V
    .locals 1

    .line 255
    monitor-enter p0

    const/4 v0, 0x0

    .line 257
    :try_start_0
    iput-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    .line 258
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearHeaders()V
    .locals 1

    .line 371
    monitor-enter p0

    const/4 v0, 0x0

    .line 373
    :try_start_0
    iput-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHeaders:Ljava/util/List;

    .line 374
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearProtocols()V
    .locals 1

    .line 123
    monitor-enter p0

    const/4 v0, 0x0

    .line 125
    :try_start_0
    iput-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearUserInfo()V
    .locals 1

    .line 407
    monitor-enter p0

    const/4 v0, 0x0

    .line 409
    :try_start_0
    iput-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mUserInfo:Ljava/lang/String;

    .line 410
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsExtension(Lcom/neovisionaries/ws/client/WebSocketExtension;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 269
    :cond_0
    monitor-enter p0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    if-nez v1, :cond_1

    .line 273
    monitor-exit p0

    return v0

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 277
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsExtension(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 288
    :cond_0
    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    if-nez v1, :cond_1

    .line 292
    monitor-exit p0

    return v0

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neovisionaries/ws/client/WebSocketExtension;

    .line 297
    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocketExtension;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, 0x1

    .line 299
    monitor-exit p0

    return p1

    .line 303
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 304
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsProtocol(Ljava/lang/String;)Z
    .locals 1

    .line 155
    monitor-enter p0

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 159
    monitor-exit p0

    return p1

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 163
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mUri:Ljava/net/URI;

    return-object v0
.end method

.method public removeExtension(Lcom/neovisionaries/ws/client/WebSocketExtension;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 199
    :cond_0
    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    if-nez v0, :cond_1

    .line 203
    monitor-exit p0

    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 208
    iget-object p1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 210
    iput-object p1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    .line 212
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeExtensions(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 223
    :cond_0
    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    if-nez v0, :cond_1

    .line 227
    monitor-exit p0

    return-void

    .line 230
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    iget-object v1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neovisionaries/ws/client/WebSocketExtension;

    .line 234
    invoke-virtual {v2}, Lcom/neovisionaries/ws/client/WebSocketExtension;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 240
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neovisionaries/ws/client/WebSocketExtension;

    .line 242
    iget-object v1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 245
    :cond_4
    iget-object p1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 247
    iput-object p1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mExtensions:Ljava/util/List;

    .line 249
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeHeaders(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_6

    .line 334
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 339
    :cond_0
    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHeaders:Ljava/util/List;

    if-nez v0, :cond_1

    .line 343
    monitor-exit p0

    return-void

    .line 346
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    iget-object v1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 350
    aget-object v3, v2, v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 356
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 358
    iget-object v1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 361
    :cond_4
    iget-object p1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHeaders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 363
    iput-object p1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mHeaders:Ljava/util/List;

    .line 365
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method public removeProtocol(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 108
    monitor-exit p0

    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 113
    iget-object p1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mProtocols:Ljava/util/Set;

    .line 117
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setUserInfo(Ljava/lang/String;)V
    .locals 0

    .line 380
    monitor-enter p0

    .line 382
    :try_start_0
    iput-object p1, p0, Lcom/neovisionaries/ws/client/HandshakeBuilder;->mUserInfo:Ljava/lang/String;

    .line 383
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    const-string v0, "%s:%s"

    const/4 v1, 0x2

    .line 399
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 401
    invoke-virtual {p0, p1}, Lcom/neovisionaries/ws/client/HandshakeBuilder;->setUserInfo(Ljava/lang/String;)V

    return-void
.end method
