.class public abstract Lcom/jakewharton/rxbinding2/widget/RatingBarChangeEvent;
.super Ljava/lang/Object;
.source "RatingBarChangeEvent.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/widget/RatingBar;FZ)Lcom/jakewharton/rxbinding2/widget/RatingBarChangeEvent;
    .locals 1
    .param p0    # Landroid/widget/RatingBar;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 13
    new-instance v0, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/jakewharton/rxbinding2/widget/AutoValue_RatingBarChangeEvent;-><init>(Landroid/widget/RatingBar;FZ)V

    return-object v0
.end method


# virtual methods
.method public abstract fromUser()Z
.end method

.method public abstract rating()F
.end method

.method public abstract view()Landroid/widget/RatingBar;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
