.class public Lcom/intermedia/network/SocketMessageFactory;
.super Ljava/lang/Object;
.source "SocketMessageFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/network/SocketMessageFactory$SocketMessageFactoryException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generate(Lorg/json/JSONObject;)Lcom/intermedia/model/message/SocketMessage;
    .locals 5

    const-string v0, "type"

    .line 35
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/intermedia/network/SocketMessageType;->supported:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 37
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v0

    new-instance v1, Lcom/intermedia/util/reporting/ErrorLog;

    const-string v3, ""

    invoke-direct {v1, v3}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/intermedia/network/SocketMessageFactory$SocketMessageFactoryException;

    const-string v4, "Unsupported socket message received"

    invoke-direct {v3, v4}, Lcom/intermedia/network/SocketMessageFactory$SocketMessageFactoryException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object v1

    const-string v3, "message"

    .line 39
    invoke-virtual {v1, v3, p0}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-object v2

    .line 43
    :cond_0
    :try_start_0
    invoke-static {v0, p0}, Lcom/intermedia/network/SocketMessageFactory;->getMessage(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/intermedia/model/message/SocketMessage;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 45
    invoke-static {}, Lcom/intermedia/util/reporting/ErrorReporter;->get()Lcom/intermedia/util/reporting/ErrorReporter;

    move-result-object v1

    new-instance v3, Lcom/intermedia/util/reporting/ErrorLog;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/intermedia/util/reporting/ErrorLog;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/intermedia/network/SocketMessageFactory$SocketMessageFactoryException;

    invoke-direct {v4, v0}, Lcom/intermedia/network/SocketMessageFactory$SocketMessageFactoryException;-><init>(Ljava/lang/Throwable;)V

    .line 46
    invoke-virtual {v3, v4}, Lcom/intermedia/util/reporting/ErrorLog;->setThrowable(Ljava/lang/Throwable;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object v0

    const-string v3, "message"

    .line 47
    invoke-virtual {v0, v3, p0}, Lcom/intermedia/util/reporting/ErrorLog;->addKeyValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/intermedia/util/reporting/ErrorLog;

    move-result-object p0

    .line 45
    invoke-virtual {v1, p0}, Lcom/intermedia/util/reporting/ErrorReporter;->logError(Lcom/intermedia/util/reporting/ErrorLog;)V

    return-object v2
.end method

.method private static getMessage(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/intermedia/model/message/SocketMessage;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "interaction"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "questionClosed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "giftDrop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "postGame"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "gameStatus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "broadcastStats"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe

    goto :goto_1

    :sswitch_6
    const-string v0, "broadcastEnded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_7
    const-string v0, "questionCanceled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_8
    const-string v0, "questionSummary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_9
    const-string v0, "extraLife"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto :goto_1

    :sswitch_a
    const-string v0, "questionFinished"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto :goto_1

    :sswitch_b
    const-string v0, "broadcastFull"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_c
    const-string v0, "kicked"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd

    goto :goto_1

    :sswitch_d
    const-string v0, "question"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_e
    const-string v0, "gameSummary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 85
    :pswitch_0
    new-instance p0, Lcom/intermedia/model/message/BroadcastStatsMessage;

    invoke-direct {p0, p1}, Lcom/intermedia/model/message/BroadcastStatsMessage;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    .line 83
    :pswitch_1
    new-instance p0, Lcom/intermedia/model/message/KickedSocketMessage;

    invoke-direct {p0, p1}, Lcom/intermedia/model/message/KickedSocketMessage;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    .line 81
    :pswitch_2
    new-instance p0, Lcom/intermedia/model/message/GiftDropSocketMessage;

    invoke-direct {p0, p1}, Lcom/intermedia/model/message/GiftDropSocketMessage;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    .line 79
    :pswitch_3
    new-instance p0, Lcom/intermedia/model/message/ExtraLifeSocketMessage;

    invoke-direct {p0, p1}, Lcom/intermedia/model/message/ExtraLifeSocketMessage;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    .line 77
    :pswitch_4
    new-instance p0, Lcom/intermedia/model/message/GameStatusSocketMessage;

    invoke-direct {p0, p1}, Lcom/intermedia/model/message/GameStatusSocketMessage;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    .line 75
    :pswitch_5
    new-instance p0, Lcom/intermedia/model/message/PostGameMessage;

    invoke-direct {p0, p1}, Lcom/intermedia/model/message/PostGameMessage;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    .line 73
    :pswitch_6
    new-instance p0, Lcom/intermedia/model/message/GameSummaryMessage;

    invoke-direct {p0, p1}, Lcom/intermedia/model/message/GameSummaryMessage;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    .line 71
    :pswitch_7
    new-instance p0, Lcom/intermedia/model/message/QuestionFinishedMessage;

    invoke-direct {p0, p1}, Lcom/intermedia/model/message/QuestionFinishedMessage;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    .line 69
    :pswitch_8
    new-instance p0, Lcom/intermedia/model/message/QuestionCanceledMessage;

    invoke-direct {p0, p1}, Lcom/intermedia/model/message/QuestionCanceledMessage;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    .line 67
    :pswitch_9
    new-instance p0, Lcom/intermedia/model/message/QuestionSummaryMessage;

    invoke-direct {p0, p1}, Lcom/intermedia/model/message/QuestionSummaryMessage;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    .line 65
    :pswitch_a
    new-instance p0, Lcom/intermedia/model/message/QuestionClosedMessage;

    invoke-direct {p0, p1}, Lcom/intermedia/model/message/QuestionClosedMessage;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    .line 63
    :pswitch_b
    new-instance p0, Lcom/intermedia/model/message/QuestionMessage;

    invoke-direct {p0, p1}, Lcom/intermedia/model/message/QuestionMessage;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    .line 61
    :pswitch_c
    new-instance p0, Lcom/intermedia/model/message/InteractionMessage;

    invoke-direct {p0, p1}, Lcom/intermedia/model/message/InteractionMessage;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    .line 59
    :pswitch_d
    new-instance p0, Lcom/intermedia/model/message/BroadcastFullMessage;

    invoke-direct {p0, p1}, Lcom/intermedia/model/message/BroadcastFullMessage;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    .line 57
    :pswitch_e
    new-instance p0, Lcom/intermedia/model/message/BroadcastEndedMessage;

    invoke-direct {p0, p1}, Lcom/intermedia/model/message/BroadcastEndedMessage;-><init>(Lorg/json/JSONObject;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x76af00ac -> :sswitch_e
        -0x457dc41a -> :sswitch_d
        -0x4373329b -> :sswitch_c
        -0x38f0c910 -> :sswitch_b
        -0x10b9e588 -> :sswitch_a
        -0xf1cd0d4 -> :sswitch_9
        -0x29d0b20 -> :sswitch_8
        0x1015de9f -> :sswitch_7
        0x1ac64279 -> :sswitch_6
        0x1b8e3c5e -> :sswitch_5
        0x2562ca84 -> :sswitch_4
        0x2d1908b2 -> :sswitch_3
        0x3298f43f -> :sswitch_2
        0x5ffe04f2 -> :sswitch_1
        0x6deace12 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
