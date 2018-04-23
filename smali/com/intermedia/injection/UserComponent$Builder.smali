.class public interface abstract Lcom/intermedia/injection/UserComponent$Builder;
.super Ljava/lang/Object;
.source "UserComponent.java"


# annotations
.annotation build Ldagger/Subcomponent$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/injection/UserComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract build()Lcom/intermedia/injection/UserComponent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public abstract userModule(Lcom/intermedia/injection/UserModule;)Lcom/intermedia/injection/UserComponent$Builder;
    .param p1    # Lcom/intermedia/injection/UserModule;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
