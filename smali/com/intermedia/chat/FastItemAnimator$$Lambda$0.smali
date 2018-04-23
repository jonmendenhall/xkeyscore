.class final synthetic Lcom/intermedia/chat/FastItemAnimator$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/intermedia/chat/FastItemAnimator;

.field private final arg$2:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/intermedia/chat/FastItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$$Lambda$0;->arg$1:Lcom/intermedia/chat/FastItemAnimator;

    iput-object p2, p0, Lcom/intermedia/chat/FastItemAnimator$$Lambda$0;->arg$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/intermedia/chat/FastItemAnimator$$Lambda$0;->arg$1:Lcom/intermedia/chat/FastItemAnimator;

    iget-object v1, p0, Lcom/intermedia/chat/FastItemAnimator$$Lambda$0;->arg$2:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/intermedia/chat/FastItemAnimator;->lambda$runPendingAnimations$0$FastItemAnimator(Ljava/util/ArrayList;)V

    return-void
.end method
