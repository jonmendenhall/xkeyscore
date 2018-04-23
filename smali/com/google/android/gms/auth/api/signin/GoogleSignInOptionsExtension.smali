.class public interface abstract Lcom/google/android/gms/auth/api/signin/GoogleSignInOptionsExtension;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getExtensionType()I
.end method

.method public abstract getImpliedScopes()Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toBundle()Landroid/os/Bundle;
.end method
