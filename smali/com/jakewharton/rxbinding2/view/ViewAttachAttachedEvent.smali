.class public abstract Lcom/jakewharton/rxbinding2/view/ViewAttachAttachedEvent;
.super Lcom/jakewharton/rxbinding2/view/ViewAttachEvent;
.source "ViewAttachAttachedEvent.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/jakewharton/rxbinding2/view/ViewAttachEvent;-><init>()V

    return-void
.end method

.method public static create(Landroid/view/View;)Lcom/jakewharton/rxbinding2/view/ViewAttachAttachedEvent;
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CheckResult;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 19
    new-instance v0, Lcom/jakewharton/rxbinding2/view/AutoValue_ViewAttachAttachedEvent;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding2/view/AutoValue_ViewAttachAttachedEvent;-><init>(Landroid/view/View;)V

    return-object v0
.end method
