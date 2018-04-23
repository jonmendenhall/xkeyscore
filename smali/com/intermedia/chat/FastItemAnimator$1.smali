.class Lcom/intermedia/chat/FastItemAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FastItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/intermedia/chat/FastItemAnimator;->animateRemoveImpl(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/intermedia/chat/FastItemAnimator;

.field final synthetic val$animation:Landroid/view/ViewPropertyAnimator;

.field final synthetic val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/intermedia/chat/FastItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$1;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    iput-object p2, p0, Lcom/intermedia/chat/FastItemAnimator$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/intermedia/chat/FastItemAnimator$1;->val$animation:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/intermedia/chat/FastItemAnimator$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 204
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$1;->val$animation:Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 205
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$1;->val$view:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 206
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$1;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    iget-object v0, p0, Lcom/intermedia/chat/FastItemAnimator$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/intermedia/chat/FastItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 207
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$1;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    invoke-static {p1}, Lcom/intermedia/chat/FastItemAnimator;->access$000(Lcom/intermedia/chat/FastItemAnimator;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/intermedia/chat/FastItemAnimator$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 208
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$1;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    invoke-static {p1}, Lcom/intermedia/chat/FastItemAnimator;->access$100(Lcom/intermedia/chat/FastItemAnimator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 199
    iget-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$1;->this$0:Lcom/intermedia/chat/FastItemAnimator;

    iget-object v0, p0, Lcom/intermedia/chat/FastItemAnimator$1;->val$holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/intermedia/chat/FastItemAnimator;->dispatchRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
