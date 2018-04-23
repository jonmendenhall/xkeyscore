.class public final Lcom/intermedia/libs/rx/CombineLatestPairTransformer;
.super Ljava/lang/Object;
.source "CombineLatestPairTransformer.java"

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
        "TS;",
        "Landroid/util/Pair<",
        "TS;TT;>;>;"
    }
.end annotation


# instance fields
.field private final second:Lio/reactivex/Flowable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/intermedia/libs/rx/CombineLatestPairTransformer;->second:Lio/reactivex/Flowable;

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TS;>;)",
            "Lorg/reactivestreams/Publisher<",
            "Landroid/util/Pair<",
            "TS;TT;>;>;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/intermedia/libs/rx/CombineLatestPairTransformer;->second:Lio/reactivex/Flowable;

    sget-object v1, Lcom/intermedia/libs/rx/CombineLatestPairTransformer$$Lambda$0;->$instance:Lio/reactivex/functions/BiFunction;

    invoke-static {p1, v0, v1}, Lio/reactivex/Flowable;->combineLatest(Lorg/reactivestreams/Publisher;Lorg/reactivestreams/Publisher;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method
