.class public final Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;
.super Lcom/intermedia/util/logging/events/WebSocketState;
.source "WebSocketState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/util/logging/events/WebSocketState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Disconnecting"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;",
        "Lcom/intermedia/util/logging/events/WebSocketState;",
        "tag",
        "",
        "closedByServer",
        "",
        "isReleasing",
        "(Ljava/lang/String;ZZ)V",
        "getClosedByServer",
        "()Z",
        "app_externalRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field private final closedByServer:Z

.field private final isReleasing:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p1, v0}, Lcom/intermedia/util/logging/events/WebSocketState;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p2, p0, Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;->closedByServer:Z

    iput-boolean p3, p0, Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;->isReleasing:Z

    return-void
.end method


# virtual methods
.method public final getClosedByServer()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;->closedByServer:Z

    return v0
.end method

.method public final isReleasing()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/intermedia/util/logging/events/WebSocketState$Disconnecting;->isReleasing:Z

    return v0
.end method
