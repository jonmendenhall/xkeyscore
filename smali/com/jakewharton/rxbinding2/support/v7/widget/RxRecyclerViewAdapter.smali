.class public final Lcom/jakewharton/rxbinding2/support/v7/widget/RxRecyclerViewAdapter;
.super Ljava/lang/Object;
.source "RxRecyclerViewAdapter.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static dataChanges(Landroid/support/v7/widget/RecyclerView$Adapter;)Lcom/jakewharton/rxbinding2/InitialValueObservable;
    .locals 1
    .param p0    # Landroid/support/v7/widget/RecyclerView$Adapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>(TT;)",
            "Lcom/jakewharton/rxbinding2/InitialValueObservable<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "adapter == null"

    .line 22
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding2/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/support/v7/widget/RecyclerAdapterDataChangeObservable;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-object v0
.end method
