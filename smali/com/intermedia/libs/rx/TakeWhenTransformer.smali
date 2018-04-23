.class public final Lcom/intermedia/libs/rx/TakeWhenTransformer;
.super Ljava/lang/Object;
.source "TakeWhenTransformer.java"

# interfaces
.implements Lio/reactivex/FlowableTransformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableTransformer<",
        "TS;TS;>;"
    }
.end annotation


# instance fields
.field private when:Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Flowable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Flowable;)V
    .locals 0
    .param p1    # Lio/reactivex/Flowable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/intermedia/libs/rx/TakeWhenTransformer;->when:Lio/reactivex/Flowable;

    return-void
.end method

.method static final synthetic lambda$apply$0$TakeWhenTransformer(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-object p1
.end method


# virtual methods
.method public apply(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;
    .locals 2
    .param p1    # Lio/reactivex/Flowable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TS;>;)",
            "Lorg/reactivestreams/Publisher<",
            "TS;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/intermedia/libs/rx/TakeWhenTransformer;->when:Lio/reactivex/Flowable;

    sget-object v1, Lcom/intermedia/libs/rx/TakeWhenTransformer$$Lambda$0;->$instance:Lio/reactivex/functions/BiFunction;

    invoke-virtual {v0, p1, v1}, Lio/reactivex/Flowable;->withLatestFrom(Lorg/reactivestreams/Publisher;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method
