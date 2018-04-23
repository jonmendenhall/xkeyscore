.class public Lcom/google/android/gms/measurement/AppMeasurement$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/AppMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field public zziwk:Ljava/lang/String;

.field public zziwl:Ljava/lang/String;

.field public zziwm:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/measurement/AppMeasurement$zzb;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwk:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwl:Ljava/lang/String;

    iget-wide v0, p1, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwm:J

    iput-wide v0, p0, Lcom/google/android/gms/measurement/AppMeasurement$zzb;->zziwm:J

    return-void
.end method
