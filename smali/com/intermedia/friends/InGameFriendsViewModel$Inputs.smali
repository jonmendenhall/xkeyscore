.class public interface abstract Lcom/intermedia/friends/InGameFriendsViewModel$Inputs;
.super Ljava/lang/Object;
.source "InGameFriendsViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intermedia/friends/InGameFriendsViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Inputs"
.end annotation


# virtual methods
.method public abstract drawerOpened()V
.end method

.method public abstract questionHasChanged()V
.end method

.method public abstract viewerUpdateReceived(Lcom/intermedia/model/message/ViewerUpdateMessage;)V
    .param p1    # Lcom/intermedia/model/message/ViewerUpdateMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
