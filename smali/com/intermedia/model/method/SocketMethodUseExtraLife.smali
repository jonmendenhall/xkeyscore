.class public final Lcom/intermedia/model/method/SocketMethodUseExtraLife;
.super Lcom/intermedia/model/method/SocketMethod;
.source "SocketMethodUseExtraLife.java"


# instance fields
.field public final questionId:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string v1, "useExtraLife"

    .line 12
    new-instance v5, Lcom/intermedia/util/logging/events/OutgoingGameMessage$UseExtraLife;

    invoke-direct {v5, p4, p5}, Lcom/intermedia/util/logging/events/OutgoingGameMessage$UseExtraLife;-><init>(J)V

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/intermedia/model/method/SocketMethod;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/intermedia/util/logging/events/OutgoingGameMessage;)V

    .line 14
    iput-wide p4, p0, Lcom/intermedia/model/method/SocketMethodUseExtraLife;->questionId:J

    return-void
.end method


# virtual methods
.method public getMessageString()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 20
    sget-object v0, Lcom/intermedia/model/method/SocketMethodUseExtraLife;->GSON:Lcom/google/gson/Gson;

    const-class v1, Lcom/intermedia/model/method/SocketMethodUseExtraLife;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
