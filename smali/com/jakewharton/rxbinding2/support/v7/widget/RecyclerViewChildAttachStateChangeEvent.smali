.class public abstract Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEvent;
.super Ljava/lang/Object;
.source "RecyclerViewChildAttachStateChangeEvent.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract child()Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract view()Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
