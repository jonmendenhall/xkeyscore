.class public Lcom/facebook/places/internal/BluetoothScanResult;
.super Ljava/lang/Object;
.source "BluetoothScanResult.java"


# instance fields
.field public payload:Ljava/lang/String;

.field public rssi:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/facebook/places/internal/BluetoothScanResult;->payload:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/facebook/places/internal/BluetoothScanResult;->rssi:I

    return-void
.end method
