.class public final Lcom/intermedia/util/logging/events/OutgoingGameMessage$ChatVisibilityToggled;
.super Lcom/intermedia/util/logging/events/OutgoingGameMessage;
.source "OutgoingGameMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/util/logging/events/OutgoingGameMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChatVisibilityToggled"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/intermedia/util/logging/events/OutgoingGameMessage$ChatVisibilityToggled;",
        "Lcom/intermedia/util/logging/events/OutgoingGameMessage;",
        "visible",
        "",
        "(Z)V",
        "getVisible",
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
.field private final visible:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/intermedia/util/logging/events/OutgoingGameMessage;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-boolean p1, p0, Lcom/intermedia/util/logging/events/OutgoingGameMessage$ChatVisibilityToggled;->visible:Z

    return-void
.end method


# virtual methods
.method public final getVisible()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/intermedia/util/logging/events/OutgoingGameMessage$ChatVisibilityToggled;->visible:Z

    return v0
.end method