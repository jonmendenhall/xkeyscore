.class public final Lcom/google/android/gms/common/internal/zzam;
.super Ljava/lang/Object;


# instance fields
.field private final mPackageName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final zzgal:I

.field private final zzgba:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final zzgbb:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzam;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzam;->zzgba:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zzam;->zzgbb:Z

    const/16 p1, 0x81

    iput p1, p0, Lcom/google/android/gms/common/internal/zzam;->zzgal:I

    return-void
.end method


# virtual methods
.method final getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzam;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method final zzalk()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/zzam;->zzgal:I

    return v0
.end method

.method final zzalo()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzam;->zzgba:Ljava/lang/String;

    return-object v0
.end method
