.class public final Lcom/intermedia/libs/rx/ErrorsTransformer;
.super Ljava/lang/Object;
.source "ErrorsTransformer.java"

# interfaces
.implements Lio/reactivex/FlowableTransformer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableTransformer<",
        "Lio/reactivex/Notification<",
        "TT;>;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;
    .locals 1
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
            "Lio/reactivex/Notification<",
            "TT;>;>;)",
            "Lio/reactivex/Flowable<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 13
    sget-object v0, Lcom/intermedia/libs/rx/ErrorsTransformer$$Lambda$0;->$instance:Lio/reactivex/functions/Predicate;

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->filter(Lio/reactivex/functions/Predicate;)Lio/reactivex/Flowable;

    move-result-object p1

    sget-object v0, Lcom/intermedia/libs/rx/ErrorsTransformer$$Lambda$1;->$instance:Lio/reactivex/functions/Function;

    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;
    .locals 0
    .param p1    # Lio/reactivex/Flowable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lcom/intermedia/libs/rx/ErrorsTransformer;->apply(Lio/reactivex/Flowable;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method
