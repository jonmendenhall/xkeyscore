.class public final Lcom/intermedia/libs/rx/IgnoreValueTypeTransformer;
.super Ljava/lang/Object;
.source "IgnoreValueTypeTransformer.java"

# interfaces
.implements Lio/reactivex/FlowableTransformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableTransformer<",
        "Ljava/lang/Object;",
        "Lcom/intermedia/libs/rx/RxNotification;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic lambda$apply$0$IgnoreValueTypeTransformer(Ljava/lang/Object;)Lcom/intermedia/libs/rx/RxNotification;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    sget-object p0, Lcom/intermedia/libs/rx/RxNotification;->INSTANCE:Lcom/intermedia/libs/rx/RxNotification;

    return-object p0
.end method


# virtual methods
.method public apply(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/reactivestreams/Publisher<",
            "Lcom/intermedia/libs/rx/RxNotification;",
            ">;"
        }
    .end annotation

    .line 11
    sget-object v0, Lcom/intermedia/libs/rx/IgnoreValueTypeTransformer$$Lambda$0;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method
