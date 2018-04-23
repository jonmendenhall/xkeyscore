.class final Lkotlin/collections/SlidingWindowKt$windowedIterator$1;
.super Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;
.source "SlidingWindow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/SlidingWindowKt;->windowedIterator(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/coroutines/experimental/SequenceBuilder<",
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
        "Lkotlin/coroutines/experimental/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/SlidingWindowKt$windowedIterator$1\n*L\n1#1,210:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u0002*\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H\u00020\u00040\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "Lkotlin/coroutines/experimental/SequenceBuilder;",
        "",
        "invoke",
        "(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x9
    }
.end annotation


# instance fields
.field final synthetic $iterator:Ljava/util/Iterator;

.field final synthetic $partialWindows:Z

.field final synthetic $reuseBuffer:Z

.field final synthetic $size:I

.field final synthetic $step:I

.field I$0:I

.field I$1:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field private p$:Lkotlin/coroutines/experimental/SequenceBuilder;


# direct methods
.method constructor <init>(IILjava/util/Iterator;ZZLkotlin/coroutines/experimental/Continuation;)V
    .locals 0

    iput p1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iput p2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    iput-object p3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    iput-boolean p4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    iput-boolean p5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;-><init>(ILkotlin/coroutines/experimental/Continuation;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 0

    check-cast p1, Lkotlin/coroutines/experimental/SequenceBuilder;

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->create(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;
    .locals 8
    .param p1    # Lkotlin/coroutines/experimental/SequenceBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/SequenceBuilder<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlin/coroutines/experimental/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iget v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    iget-boolean v5, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    iget-boolean v6, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;-><init>(IILjava/util/Iterator;ZZLkotlin/coroutines/experimental/Continuation;)V

    iput-object p1, v0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->p$:Lkotlin/coroutines/experimental/SequenceBuilder;

    return-object v0
.end method

.method public final doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {}, Lkotlin/coroutines/experimental/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    .line 37
    iget v0, p0, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 71
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :pswitch_0
    iget-object p1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlin/collections/RingBuffer;

    iget p1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    if-eqz p2, :cond_12

    throw p2

    :pswitch_1
    iget-object v0, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/collections/RingBuffer;

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iget-object v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlin/coroutines/experimental/SequenceBuilder;

    if-eqz p2, :cond_0

    throw p2

    :cond_0
    move-object p2, p1

    move-object p1, p0

    goto/16 :goto_8

    :pswitch_2
    iget-object v0, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iget-object v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/collections/RingBuffer;

    iget v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/coroutines/experimental/SequenceBuilder;

    if-eqz p2, :cond_1

    throw p2

    :cond_1
    move-object p2, p1

    move-object p1, p0

    goto/16 :goto_5

    :pswitch_3
    iget p1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iget-object p1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    iget p1, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    if-eqz p2, :cond_12

    throw p2

    :pswitch_4
    iget-object v0, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    iget-object v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iget-object v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlin/coroutines/experimental/SequenceBuilder;

    if-eqz p2, :cond_2

    throw p2

    :cond_2
    move-object v5, p1

    move p2, v3

    move-object p1, p0

    goto :goto_1

    :pswitch_5
    if-eqz p2, :cond_3

    throw p2

    :cond_3
    iget-object p2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->p$:Lkotlin/coroutines/experimental/SequenceBuilder;

    .line 38
    iget v0, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    iget v2, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    sub-int/2addr v0, v2

    if-ltz v0, :cond_a

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 42
    iget-object v4, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v5, p1

    move-object p1, p0

    move-object v9, v4

    move-object v4, p2

    move p2, v0

    move-object v0, v9

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-lez v3, :cond_5

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 44
    :cond_5
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v8, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v7, v8, :cond_4

    .line 46
    iput-object v4, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput p2, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput-object v2, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput v3, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    iput-object v6, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput-object v0, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    iput v1, p1, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-virtual {v4, v2, p1}, Lkotlin/coroutines/experimental/SequenceBuilder;->yield(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v5, :cond_6

    return-object v5

    .line 47
    :cond_6
    :goto_1
    iget-boolean v3, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    move v3, p2

    goto :goto_0

    .line 51
    :cond_8
    move-object v0, v2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_12

    .line 52
    iget-boolean v0, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-nez v0, :cond_9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    if-ne v0, v1, :cond_12

    :cond_9
    iput p2, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput-object v2, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$1:I

    const/4 p2, 0x2

    iput p2, p1, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-virtual {v4, v2, p1}, Lkotlin/coroutines/experimental/SequenceBuilder;->yield(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_12

    return-object v5

    .line 55
    :cond_a
    new-instance v2, Lkotlin/collections/RingBuffer;

    iget v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$size:I

    invoke-direct {v2, v3}, Lkotlin/collections/RingBuffer;-><init>(I)V

    .line 56
    iget-object v3, p0, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$iterator:Ljava/util/Iterator;

    move-object v4, p2

    move-object p2, p1

    move-object p1, p0

    move-object v9, v3

    move v3, v0

    move-object v0, v9

    :cond_b
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 57
    invoke-virtual {v2, v5}, Lkotlin/collections/RingBuffer;->add(Ljava/lang/Object;)V

    .line 58
    invoke-virtual {v2}, Lkotlin/collections/RingBuffer;->isFull()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 59
    iget-boolean v6, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v6, :cond_c

    move-object v6, v2

    check-cast v6, Ljava/util/List;

    goto :goto_4

    :cond_c
    new-instance v6, Ljava/util/ArrayList;

    move-object v7, v2

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v6, Ljava/util/List;

    :goto_4
    iput-object v4, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput-object v2, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    iput-object v5, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$2:Ljava/lang/Object;

    iput-object v0, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$3:Ljava/lang/Object;

    const/4 v5, 0x3

    iput v5, p1, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-virtual {v4, v6, p1}, Lkotlin/coroutines/experimental/SequenceBuilder;->yield(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p2, :cond_d

    return-object p2

    .line 60
    :cond_d
    :goto_5
    iget v5, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v2, v5}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    goto :goto_3

    .line 63
    :cond_e
    iget-boolean v0, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$partialWindows:Z

    if-eqz v0, :cond_12

    move-object v0, v2

    move v2, v3

    move-object v3, v4

    .line 64
    :goto_6
    invoke-virtual {v0}, Lkotlin/collections/RingBuffer;->size()I

    move-result v4

    iget v5, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    if-le v4, v5, :cond_11

    .line 65
    iget-boolean v4, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$reuseBuffer:Z

    if-eqz v4, :cond_f

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    goto :goto_7

    :cond_f
    new-instance v4, Ljava/util/ArrayList;

    move-object v5, v0

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v4, Ljava/util/List;

    :goto_7
    iput-object v3, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    iput v2, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput-object v0, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$1:Ljava/lang/Object;

    const/4 v5, 0x4

    iput v5, p1, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-virtual {v3, v4, p1}, Lkotlin/coroutines/experimental/SequenceBuilder;->yield(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p2, :cond_10

    return-object p2

    .line 66
    :cond_10
    :goto_8
    iget v4, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->$step:I

    invoke-virtual {v0, v4}, Lkotlin/collections/RingBuffer;->removeFirst(I)V

    goto :goto_6

    .line 68
    :cond_11
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v1, v4

    if-eqz v1, :cond_12

    iput v2, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->I$0:I

    iput-object v0, p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->L$0:Ljava/lang/Object;

    const/4 v1, 0x5

    iput v1, p1, Lkotlin/coroutines/experimental/jvm/internal/CoroutineImpl;->label:I

    invoke-virtual {v3, v0, p1}, Lkotlin/coroutines/experimental/SequenceBuilder;->yield(Ljava/lang/Object;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p2, :cond_12

    return-object p2

    .line 71
    :cond_12
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/coroutines/experimental/SequenceBuilder;

    check-cast p2, Lkotlin/coroutines/experimental/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->invoke(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkotlin/coroutines/experimental/SequenceBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/experimental/Continuation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/experimental/SequenceBuilder<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;",
            "Lkotlin/coroutines/experimental/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->create(Lkotlin/coroutines/experimental/SequenceBuilder;Lkotlin/coroutines/experimental/Continuation;)Lkotlin/coroutines/experimental/Continuation;

    move-result-object p1

    check-cast p1, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lkotlin/collections/SlidingWindowKt$windowedIterator$1;->doResume(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
