.class public abstract Lcom/intermedia/util/logging/events/WebSocketState;
.super Lcom/intermedia/util/logging/events/LoggableEvent;
.source "WebSocketState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/util/logging/events/WebSocketState$Aborted;,
        Lcom/intermedia/util/logging/events/WebSocketState$Canceled;,
        Lcom/intermedia/util/logging/events/WebSocketState$Connected;,
        Lcom/intermedia/util/logging/events/WebSocketState$Connecting;,
        Lcom/intermedia/util/logging/events/WebSocketState$Disconnected;,
        Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;,
        Lcom/intermedia/util/logging/events/WebSocketState$Exception;,
        Lcom/intermedia/util/logging/events/WebSocketState$Reconnected;,
        Lcom/intermedia/util/logging/events/WebSocketState$Releasing;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWebSocketState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebSocketState.kt\ncom/intermedia/util/logging/events/WebSocketState\n*L\n1#1,21:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\t\u0006\u0007\u0008\t\n\u000b\u000c\r\u000eB\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016\u0082\u0001\t\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/intermedia/util/logging/events/WebSocketState;",
        "Lcom/intermedia/util/logging/events/LoggableEvent;",
        "tag",
        "",
        "(Ljava/lang/String;)V",
        "toString",
        "Aborted",
        "Canceled",
        "Connected",
        "Connecting",
        "Disconnected",
        "Disconnecting",
        "Exception",
        "Reconnected",
        "Releasing",
        "Lcom/intermedia/util/logging/events/WebSocketState$Aborted;",
        "Lcom/intermedia/util/logging/events/WebSocketState$Canceled;",
        "Lcom/intermedia/util/logging/events/WebSocketState$Connected;",
        "Lcom/intermedia/util/logging/events/WebSocketState$Connecting;",
        "Lcom/intermedia/util/logging/events/WebSocketState$Disconnected;",
        "Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;",
        "Lcom/intermedia/util/logging/events/WebSocketState$Exception;",
        "Lcom/intermedia/util/logging/events/WebSocketState$Reconnected;",
        "Lcom/intermedia/util/logging/events/WebSocketState$Releasing;",
        "app_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/intermedia/util/logging/events/LoggableEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1}, Lcom/intermedia/util/logging/events/WebSocketState;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 15
    instance-of v0, p0, Lcom/intermedia/util/logging/events/WebSocketState$Connecting;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "Socket:Connecting { connectionAttempts: %d }"

    new-array v2, v2, [Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lcom/intermedia/util/logging/events/WebSocketState$Connecting;

    invoke-virtual {v3}, Lcom/intermedia/util/logging/events/WebSocketState$Connecting;->getConnectionAttempt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    array-length v1, v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 16
    :cond_0
    instance-of v0, p0, Lcom/intermedia/util/logging/events/WebSocketState$Disconnected;

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    const-string v0, "Socket:Disconnected { closedByServer: %b, isReleasing: %b }"

    new-array v3, v3, [Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Lcom/intermedia/util/logging/events/WebSocketState$Disconnected;

    invoke-virtual {v4}, Lcom/intermedia/util/logging/events/WebSocketState$Disconnected;->getClosedByServer()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {v4}, Lcom/intermedia/util/logging/events/WebSocketState$Disconnected;->isReleasing()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v2

    array-length v1, v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_1
    instance-of v0, p0, Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;

    if-eqz v0, :cond_2

    const-string v0, "Socket:Disconnecting { closedByServer: %b, isReleasing: %b }"

    new-array v3, v3, [Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;

    invoke-virtual {v4}, Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;->getClosedByServer()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v1

    invoke-virtual {v4}, Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;->isReleasing()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v2

    array-length v1, v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_2
    instance-of v0, p0, Lcom/intermedia/util/logging/events/WebSocketState$Exception;

    if-eqz v0, :cond_3

    const-string v0, "Socket:Exception { message: %s }"

    new-array v2, v2, [Ljava/lang/Object;

    move-object v3, p0

    check-cast v3, Lcom/intermedia/util/logging/events/WebSocketState$Exception;

    invoke-virtual {v3}, Lcom/intermedia/util/logging/events/WebSocketState$Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    array-length v1, v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Socket:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
