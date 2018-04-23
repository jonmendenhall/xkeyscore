.class public abstract Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEvent;
.super Ljava/lang/Object;
.source "RecyclerViewScrollEvent.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/support/v7/widget/RecyclerView;II)Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerViewScrollEvent;
    .locals 1
    .param p0    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 20
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v7/widget/AutoValue_RecyclerViewScrollEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/jakewharton/rxbinding2/support/v7/widget/AutoValue_RecyclerViewScrollEvent;-><init>(Landroid/support/v7/widget/RecyclerView;II)V

    return-object v0
.end method


# virtual methods
.method public abstract dx()I
.end method

.method public abstract dy()I
.end method

.method public abstract view()Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
