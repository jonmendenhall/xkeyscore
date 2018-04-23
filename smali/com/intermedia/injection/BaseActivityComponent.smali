.class public interface abstract Lcom/intermedia/injection/BaseActivityComponent;
.super Ljava/lang/Object;
.source "BaseActivityComponent.java"


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lcom/intermedia/injection/BaseActivityModule;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/intermedia/injection/BaseActivityComponent$Builder;
    }
.end annotation


# virtual methods
.method public abstract inject(Lcom/intermedia/AboutActivity;)V
.end method

.method public abstract inject(Lcom/intermedia/CashoutActivity;)V
.end method

.method public abstract inject(Lcom/intermedia/GameActivity;)V
.end method

.method public abstract inject(Lcom/intermedia/LeaderboardActivity;)V
.end method

.method public abstract inject(Lcom/intermedia/MainActivity;)V
.end method

.method public abstract inject(Lcom/intermedia/SettingsActivity;)V
.end method

.method public abstract inject(Lcom/intermedia/injection/BaseInjectedActivity;)V
.end method

.method public abstract inject(Lcom/intermedia/login/LoginActivity;)V
.end method

.method public abstract inject(Lcom/intermedia/login/PhoneVerificationActivity;)V
.end method

.method public abstract inject(Lcom/intermedia/login/RegisterUserActivity;)V
.end method
