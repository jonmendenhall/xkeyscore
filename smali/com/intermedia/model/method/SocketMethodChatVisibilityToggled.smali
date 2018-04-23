.class public Lcom/intermedia/model/method/SocketMethodChatVisibilityToggled;
.super Lcom/intermedia/model/method/SocketMethod;
.source "SocketMethodChatVisibilityToggled.java"


# instance fields
.field public final visible:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "chatVisible"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v1, "chatVisibilityToggled"

    .line 13
    new-instance v5, Lcom/intermedia/util/logging/events/OutgoingGameMessage$ChatVisibilityToggled;

    invoke-direct {v5, p4}, Lcom/intermedia/util/logging/events/OutgoingGameMessage$ChatVisibilityToggled;-><init>(Z)V

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/model/method/SocketMethod;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/intermedia/util/logging/events/OutgoingGameMessage;)V

    .line 15
    iput p4, p0, Lcom/intermedia/model/method/SocketMethodChatVisibilityToggled;->visible:I

    return-void
.end method
