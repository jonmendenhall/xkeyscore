.class public Lcom/intermedia/network/SocketMessageDispatcher;
.super Ljava/lang/Object;
.source "SocketMessageDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/network/SocketMessageDispatcher$SocketMessageDispatcherException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic lambda$onMessageReceived$0$SocketMessageDispatcher(Ljava/lang/String;Lio/reactivex/SingleEmitter;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {v0}, Lcom/intermedia/network/SocketMessageFactory;->generate(Lorg/json/JSONObject;)Lcom/intermedia/model/message/SocketMessage;

    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/intermedia/util/NullableUtils;->isNonNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {p2, p1}, Lio/reactivex/SingleEmitter;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Lcom/intermedia/network/SocketMessageDispatcher$SocketMessageDispatcherException;

    const-string v0, "Failed to deserialize message json"

    invoke-direct {p1, p0, v0}, Lcom/intermedia/network/SocketMessageDispatcher$SocketMessageDispatcherException;-><init>(Lcom/intermedia/network/SocketMessageDispatcher;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lio/reactivex/SingleEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method onMessageReceived(Ljava/lang/String;)Lio/reactivex/Single;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/intermedia/model/message/SocketMessage;",
            ">;"
        }
    .end annotation

    .line 18
    new-instance v0, Lcom/intermedia/network/SocketMessageDispatcher$$Lambda$0;

    invoke-direct {v0, p0, p1}, Lcom/intermedia/network/SocketMessageDispatcher$$Lambda$0;-><init>(Lcom/intermedia/network/SocketMessageDispatcher;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    .line 27
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
