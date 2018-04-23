.class public interface abstract Lcom/intermedia/injection/BaseActivityComponent$Builder;
.super Ljava/lang/Object;
.source "BaseActivityComponent.java"


# annotations
.annotation build Ldagger/Subcomponent$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/injection/BaseActivityComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract activityModule(Lcom/intermedia/injection/BaseActivityModule;)Lcom/intermedia/injection/BaseActivityComponent$Builder;
    .param p1    # Lcom/intermedia/injection/BaseActivityModule;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract build()Lcom/intermedia/injection/BaseActivityComponent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
