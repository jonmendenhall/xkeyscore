.class public Lcom/intermedia/model/method/SocketMethodSubscribe;
.super Lcom/intermedia/model/method/SocketMethod;
.source "SocketMethodSubscribe.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v1, "subscribe"

    .line 9
    new-instance v5, Lcom/intermedia/util/logging/events/OutgoingGameMessage$Subscribe;

    invoke-direct {v5}, Lcom/intermedia/util/logging/events/OutgoingGameMessage$Subscribe;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/model/method/SocketMethod;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/intermedia/util/logging/events/OutgoingGameMessage;)V

    return-void
.end method
