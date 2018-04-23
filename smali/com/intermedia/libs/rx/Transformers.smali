.class public final Lcom/intermedia/libs/rx/Transformers;
.super Ljava/lang/Object;
.source "Transformers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combineLatestPair(Lio/reactivex/Flowable;)Lcom/intermedia/libs/rx/CombineLatestPairTransformer;
    .locals 1
    .param p0    # Lio/reactivex/Flowable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable<",
            "TT;>;)",
            "Lcom/intermedia/libs/rx/CombineLatestPairTransformer<",
            "TS;TT;>;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/intermedia/libs/rx/CombineLatestPairTransformer;

    invoke-direct {v0, p0}, Lcom/intermedia/libs/rx/CombineLatestPairTransformer;-><init>(Lio/reactivex/Flowable;)V

    return-object v0
.end method

.method public static errors()Lcom/intermedia/libs/rx/ErrorsTransformer;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/intermedia/libs/rx/ErrorsTransformer<",
            "TT;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/intermedia/libs/rx/ErrorsTransformer;

    invoke-direct {v0}, Lcom/intermedia/libs/rx/ErrorsTransformer;-><init>()V

    return-object v0
.end method

.method public static ignoreValueType()Lcom/intermedia/libs/rx/IgnoreValueTypeTransformer;
    .locals 1

    .line 28
    new-instance v0, Lcom/intermedia/libs/rx/IgnoreValueTypeTransformer;

    invoke-direct {v0}, Lcom/intermedia/libs/rx/IgnoreValueTypeTransformer;-><init>()V

    return-object v0
.end method

.method public static takeWhen(Lio/reactivex/Flowable;)Lcom/intermedia/libs/rx/TakeWhenTransformer;
    .locals 1
    .param p0    # Lio/reactivex/Flowable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Flowable<",
            "TT;>;)",
            "Lcom/intermedia/libs/rx/TakeWhenTransformer<",
            "TS;TT;>;"
        }
    .end annotation

    .line 36
    new-instance v0, Lcom/intermedia/libs/rx/TakeWhenTransformer;

    invoke-direct {v0, p0}, Lcom/intermedia/libs/rx/TakeWhenTransformer;-><init>(Lio/reactivex/Flowable;)V

    return-object v0
.end method

.method public static values()Lcom/intermedia/libs/rx/ValuesTransformer;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/intermedia/libs/rx/ValuesTransformer<",
            "TT;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/intermedia/libs/rx/ValuesTransformer;

    invoke-direct {v0}, Lcom/intermedia/libs/rx/ValuesTransformer;-><init>()V

    return-object v0
.end method
