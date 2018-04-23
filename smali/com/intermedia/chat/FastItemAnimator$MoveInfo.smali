.class Lcom/intermedia/chat/FastItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "FastItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/chat/FastItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field fromX:I

.field fromY:I

.field holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field toX:I

.field toY:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/intermedia/chat/FastItemAnimator$MoveInfo;->holder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 62
    iput p2, p0, Lcom/intermedia/chat/FastItemAnimator$MoveInfo;->fromX:I

    .line 63
    iput p3, p0, Lcom/intermedia/chat/FastItemAnimator$MoveInfo;->fromY:I

    .line 64
    iput p4, p0, Lcom/intermedia/chat/FastItemAnimator$MoveInfo;->toX:I

    .line 65
    iput p5, p0, Lcom/intermedia/chat/FastItemAnimator$MoveInfo;->toY:I

    return-void
.end method
