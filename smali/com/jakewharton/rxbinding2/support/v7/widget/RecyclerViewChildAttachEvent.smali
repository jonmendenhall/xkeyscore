.class public abstract Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachEvent;
.super Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEvent;
.source "RecyclerViewChildAttachEvent.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachStateChangeEvent;-><init>()V

    return-void
.end method

.method public static create(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewChildAttachEvent;
    .locals 1
    .param p0    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v7/widget/AutoValue_RecyclerViewChildAttachEvent;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding2/support/v7/widget/AutoValue_RecyclerViewChildAttachEvent;-><init>(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    return-object v0
.end method
