.class public final Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;
.super Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;
    .locals 2

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;-><init>(Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;Lcom/google/android/gms/auth/api/credentials/zzf;)V

    return-object v0
.end method

.method public final bridge synthetic forceEnableSaveDialog()Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;->forceEnableSaveDialog()Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final forceEnableSaveDialog()Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;->zzedh:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final synthetic zzaat()Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;

    move-result-object v0

    return-object v0
.end method
