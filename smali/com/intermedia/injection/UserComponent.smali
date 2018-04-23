.class public interface abstract Lcom/intermedia/injection/UserComponent;
.super Ljava/lang/Object;
.source "UserComponent.java"


# annotations
.annotation runtime Lcom/intermedia/injection/UserScope;
.end annotation

.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lcom/intermedia/injection/UserModule;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/injection/UserComponent$Builder;
    }
.end annotation


# virtual methods
.method public abstract inject(Lcom/intermedia/friends/InGameFriendsViewModel$ViewModel;)V
.end method

.method public abstract inject(Lcom/intermedia/viewmodels/AddReferralDialogViewModel$ViewModel;)V
.end method

.method public abstract inject(Lcom/intermedia/viewmodels/ChangeUsernameDialogViewModel$ViewModel;)V
.end method

.method public abstract inject(Lcom/intermedia/viewmodels/LeaderboardViewModel$ViewModel;)V
.end method

.method public abstract inject(Lcom/intermedia/viewmodels/SettingsViewModel$ViewModel;)V
.end method

.method public abstract newActivityComponent()Lcom/intermedia/injection/BaseActivityComponent$Builder;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method
