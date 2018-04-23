.class public Lcom/intermedia/model/method/SocketMethodInteraction;
.super Lcom/intermedia/model/method/SocketMethod;
.source "SocketMethodInteraction.java"


# instance fields
.field public final chatMessage:Lcom/intermedia/model/ChatMessage;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "metadata"
    .end annotation
.end field

.field public final itemId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/intermedia/model/ChatMessage;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/intermedia/model/ChatMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v1, "interaction"

    .line 15
    new-instance v5, Lcom/intermedia/util/logging/events/OutgoingGameMessage$Interaction;

    iget-object v0, p5, Lcom/intermedia/model/ChatMessage;->message:Ljava/lang/String;

    invoke-direct {v5, v0}, Lcom/intermedia/util/logging/events/OutgoingGameMessage$Interaction;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/model/method/SocketMethod;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/intermedia/util/logging/events/OutgoingGameMessage;)V

    .line 17
    iput-object p4, p0, Lcom/intermedia/model/method/SocketMethodInteraction;->itemId:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/intermedia/model/method/SocketMethodInteraction;->chatMessage:Lcom/intermedia/model/ChatMessage;

    return-void
.end method
